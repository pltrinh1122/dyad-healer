#!/usr/bin/env bash
# bin/standup.sh — dyad-healer stand-up / resume automation (mechanical spine)
#
# Borrowed from dyad-bond's bin/standup.sh (SessionStart hook) 2026-07-04 and ADAPTED to our
# substrate — same shape (surface the resume seams at boot, don't judge), our own checks.
#
# WHY: ANCHOR.md's resume rule — "On resume: read the ledger + active ward to recover live state;
#   don't trust a stale snapshot" — opens with DETERMINISTIC checks a fresh Healer otherwise
#   hand-runs every session: is memory grounded (committed+pushed)? is the anchor uncommitted?
#   is a patient still seized (Exception)? is the frontier edge live or clear? is this the durable
#   home where the daemons arm? Mechanizing them removes a per-session trigger AND hand-error.
#
# TRIGGER — `d-start: {goal/scope}` (typed discipline-trigger), NOT a settings.json hook.
#   Retired the SessionStart hook 2026-07-04 (never long-lived) after re-grounding on dyad-bond's own
#   convergence: a `.claude/settings.json` hook is CLAUDE-ONLY, and this dyad runs on agy/Gemini too
#   (ANCHOR.md "runs on either engine") — the hook is dark on half our substrates + on cloud/web. A
#   typed `d-start` fires on every substrate the Operator can type into AND carries {goal/scope} the
#   hook could not. Symmetry: d-start : standup.sh :: d-reflect : standdown.sh. The `--hook` mode
#   (emits SessionStart additionalContext JSON) is kept DORMANT for re-wiring if a substrate later
#   exposes a startup-hook analog — not deleted.
#
# WHAT IT IS NOT: it does not JUDGE. It SURFACES — the dirty tree, the open ward, the frozen
#   frontier — and hands the disposition to the Healer (commit? re-open the ward? take the edge?).
#   auto-trigger != auto-judgment. The Healer still reads the ledger + active ward; this primes the seams.
#
# COVALENT GATE (self-modification boundary): IF ever re-wired to a startup hook, that wiring in
#   .claude/settings.json is the Operator's act, never an Agent self-grant (cf. bin/git.sh's
#   Operator-granted permission). Currently NOT wired. This script is Agent-owned mechanism —
#   read-only surfacing, runnable by hand / via d-start any time.
#
# DELIBERATE OMISSION vs dyad-bond: no ROM-baseline sha check. dyad-bond records a per-file anchor
#   boot-set sha in its ledger; we have no such convention. Adopting one is a separate Pillar-5
#   proposal, not smuggled in here. We check anchor *durability* (uncommitted = ungrounded) + freshness.
#
# Usage:  bin/standup.sh           # human-readable resume report (stdout) — the d-start body
#         bin/standup.sh --hook    # DORMANT: emit SessionStart additionalContext JSON (no hook wired)

set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

ANCHOR_FILES=(ANCHOR.md CLAUDE.md GEMINI.md)

lines=()
add() { lines+=("$1"); }

# ── Durability (uncommitted/unpushed = ungrounded memory; the standing substrate threat) ────────
dirty="$(git status --porcelain 2>/dev/null || true)"
branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo '?')"
unpushed="$(git rev-list --count "origin/$branch..HEAD" 2>/dev/null || echo 0)"
if [[ -n "$dirty" ]]; then
  n="$(printf '%s\n' "$dirty" | wc -l | tr -d ' ')"
  add "Durability: ⚠ working tree DIRTY on \`$branch\` ($n path(s)) — commit before relying on the ledger as memory (the uncommitted-gap vulnerability)."
elif [[ "$unpushed" != "0" ]]; then
  add "Durability: ⚠ $unpushed unpushed commit(s) on \`$branch\` — push (bin/git.sh) so the remote backs the memory up."
else
  add "Durability: ✓ clean + in sync on \`$branch\`."
fi

# ── Anchor state (uncommitted anchor = ungrounded law; freshness for staleness awareness) ───────
anchor_dirty=()
for f in "${ANCHOR_FILES[@]}"; do
  [[ -n "$(git status --porcelain -- "$f" 2>/dev/null)" ]] && anchor_dirty+=("$f")
done
anchor_when="$(git log -1 --format='%h %cd' --date=short -- ANCHOR.md 2>/dev/null || true)"
if ((${#anchor_dirty[@]})); then
  add "Anchor: ⚠ UNCOMMITTED anchor edit(s): ${anchor_dirty[*]} — the law is ungrounded until committed."
else
  add "Anchor: ✓ ANCHOR.md {+ CLAUDE.md/GEMINI.md shims} committed; ANCHOR.md last moved ${anchor_when:-unknown}."
fi

# ── Live edge (OUR resume protocol: alignment debt → frontier → active ward/Exception) ──────────
# Alignment Precedes Execution: an open audit node freezes the frontier (bin/dag.py contract).
if grep -qE '^nodes:[[:space:]]*\{\}[[:space:]]*$' ledger/audit.yml 2>/dev/null; then
  add "Alignment: ✓ audit DAG clear (no debt freezing the frontier)."
else
  add "Alignment: ⚠ OPEN audit/alignment debt (ledger/audit.yml) — frontier is FROZEN until cleared (bin/dag.py show)."
fi
if grep -qE '^nodes:[[:space:]]*\{\}[[:space:]]*$' ledger/frontier.yml 2>/dev/null; then
  add "Frontier: ✓ edge empty ({}) — no active cut; Authoring/research default posture."
else
  add "Frontier: ▶ active node(s) on the edge — run \`bin/dag.py show\` for the tree; take the ready leaf."
fi
# SURFACE, don't judge. Per-ward clinical status is a READ, not a grep — the corpus mixes filenames
# (chart.md / ward.md) and discharge wording ("CASE DISCHARGED" / "Discharge (S8)" / "post-discharge" /
# "Discharge-readiness FALSIFIED"), so any status-classifier cries wolf or falsely reassures (the exact
# textual-marker trap the wu-wei-watch CSI-guard rework refuted). We surface the inventory + newest
# chart and hand the Exception verdict to the Healer. Corpus hygiene → ledger/backlog.md.
wardcount="$(find wards -mindepth 1 -maxdepth 1 -type d 2>/dev/null | grep -c . || echo 0)"
newest="$(ls -t wards/*/chart.md wards/*/ward.md 2>/dev/null | head -1 || true)"
if [[ "$wardcount" == "0" || -z "$newest" ]]; then
  add "Ward: (no ward files under wards/)."
else
  add "Ward: $wardcount case(s) on record; newest = ${newest#wards/} ($(git log -1 --format=%cd --date=short -- "$newest" 2>/dev/null || echo '?')). Active Exception = a live seizure under care — a READ, not a grep: if resuming mid-rescue, open that chart FIRST (EMS spine). Chart conventions vary (corpus-hygiene item)."
fi

# ── Substrate probe (durable home, or an ephemeral clone? are the daemons armable?) ─────────────
home_ok=0; gh_ok=0; commons_ok=0
[[ -d /mnt/shared_data/dzw ]] && home_ok=1
command -v gh >/dev/null 2>&1 && gh_ok=1
{ [[ -e commons/scripts/falsify.py ]] || find commons -name '*.py' 2>/dev/null | grep -q .; } && commons_ok=1
if ((home_ok && gh_ok)); then
  cnote=""; ((commons_ok)) || cnote=" (commons/ empty — re-init submodule for form tooling)"
  add "Substrate: ✓ durable home + gh present → daemons armable (bin/wu-wei-watch.sh, bin/dm-watch.sh); memory-sync viable$cnote."
else
  miss=(); ((home_ok)) || miss+=("no /mnt/shared_data/dzw mount"); ((gh_ok)) || miss+=("no gh")
  add "Substrate: ⚠ ephemeral/partial ($(IFS=', '; echo "${miss[*]}")) → daemons NOT armable here; wu-wei-watch / dm-watch are dark this session."
fi

# ── Output ──────────────────────────────────────────────────────────────────────────────────
header="dyad-healer stand-up (bin/standup.sh) — mechanical resume checks. Operate per ANCHOR.md; read ledger/ledger.md + any active ward; then take the frontier edge (bin/dag.py show)."
body="$(printf '%s\n' "$header" '' "${lines[@]}")"

if [[ "${1:-}" == "--hook" ]]; then
  CTX="$body" python3 - <<'PY'
import json, os
print(json.dumps({"hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": os.environ["CTX"],
}}))
PY
else
  printf '%s\n' "$body"
fi
