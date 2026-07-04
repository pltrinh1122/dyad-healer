#!/usr/bin/env bash
# bin/standdown.sh — dyad-healer stand-down ritual (mechanical spine + judgment template)
#
# Borrowed from dyad-bond's bin/standdown.sh (SessionEnd hook) 2026-07-04 and ADAPTED to our
# stand-down discipline (ANCHOR.md §Session discipline) + our ledger/stand-downs/ convention.
#
# WHY: close the session so the next one recovers-forward without re-deriving. The stand-down has a
#   MECHANICAL half (deterministic — automate it) and a JUDGMENT half (what is queue-worthy;
#   single-home; Reflection-before-Stand-down — NOT automatable: that is the Healer's act).
#
# HOOK BOUNDARY (verified against the Claude Code hook contract, 2026-07-04): a SessionEnd hook is
#   TEARDOWN-ONLY — it fires after the agent is gone and CANNOT inject context back into the model
#   (stdout is not consumed; only logged). And Stop fires every turn-end (cannot mean "stand-down").
#   So the judgment write CANNOT be hook-fired into the Healer. Therefore: the HEALER runs this at
#   stand-down and reads the template below; a SessionEnd hook may run it `--log` only for the
#   mechanical durability line (debug log — a tripwire the Operator can grep, never model context).
#
# COVALENT GATE (self-modification boundary): wiring the SessionEnd hook in .claude/settings.json is
#   the Operator's act, never an Agent self-grant. This script is Agent-owned mechanism.
#
# Usage:  bin/standdown.sh          # mechanical checks + the stand-down template (Healer runs at close)
#         bin/standdown.sh --log    # mechanical line only (SessionEnd hook body; output is debug-log)

set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

ANCHOR_FILES=(ANCHOR.md CLAUDE.md GEMINI.md)

# ── Mechanical: durability + anchor state (the deterministic half) ──────────────────────────────
dirty="$(git status --porcelain 2>/dev/null || true)"
branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo '?')"
unpushed="$(git log --oneline '@{u}..' 2>/dev/null | wc -l | tr -d ' ' || echo 0)"
dur_line="clean + in sync on \`$branch\`."
[[ -n "$dirty" ]] && dur_line="⚠ DIRTY on \`$branch\` — commit + push so the memory is grounded (unpushed history is ungrounded memory)."
[[ -z "$dirty" && "$unpushed" != "0" ]] && dur_line="⚠ $unpushed unpushed commit(s) on \`$branch\` — push (bin/git.sh)."

anchor_dirty=()
for f in "${ANCHOR_FILES[@]}"; do
  [[ -n "$(git status --porcelain -- "$f" 2>/dev/null)" ]] && anchor_dirty+=("$f")
done
if ((${#anchor_dirty[@]})); then
  rom_line="anchor edited this session (${anchor_dirty[*]}) + UNCOMMITTED → commit, then weigh anchor-reload materiality (restart vs skip) per governance-map."
else
  rom_line="no uncommitted anchor edit → RESTART-PENDING stays none."
fi

mech="$(printf '%s\n' \
  "dyad-healer stand-down — mechanical:" \
  "  Anchor: $rom_line" \
  "  Durability: $dur_line")"

if [[ "${1:-}" == "--log" ]]; then
  printf '%s\n' "$mech"
  exit 0
fi

cat <<TEMPLATE
$mech

dyad-healer stand-down — JUDGMENT (the Healer fills; auto-trigger != auto-judgment):
  Queue-worthy filter — record a TO-DO ONLY if it is (a) in-flight (a live front, not closed),
    (b) not already single-homed elsewhere (don't restate the ledger/kb — point to it), and
    (c) load-bearing for resume (the next session needs it to recover-forward). Else DROP it.
  Bloat-guard — the ledger is the memory, not the journal. Prefer one line + a pointer to prose.

  Stand-down checklist (ANCHOR.md §Session discipline):
   1. REFLECTION FIRST. Complete the Retrospective (CSS) BEFORE standing down (default; fatigue-
      deferral is the fallback). Scope = all activity since the last Retrospective; a forced/interrupt
      stop logs a stand-down but does NOT spawn its own Retrospective (it rolls into the next span).
      Single-home the prose → ledger/reflections/YYYY-MM-DD-<slug>.md.
   2. Live state for resume: is the frontier edge current (ledger/frontier.yml; bin/dag.py show)?
      any active ward (Exception) still open? any open audit/alignment debt? Update statuses; drop
      what closed; add only queue-worthy in-flight items.
   3. Write the stand-down note → ledger/stand-downs/YYYY-MM-DD-session-stand-down.md:
        ## Status  (stand-down reason · last Action)
        ## Queued for next session (TO-DOs)  (the queue-worthy survivors from the filter above)
   4. Anchor (above): if an anchor file changed, commit it, then judge anchor-reload materiality.
   5. Durability (above): commit + push before stepping away — unpushed history is ungrounded memory.

  NOTE: this template is Healer-run. The SessionEnd hook fires bin/standdown.sh --log (mechanical line
  only) into the debug log — it CANNOT reach the model (teardown-only). It is a tripwire, not a prompt.
TEMPLATE
