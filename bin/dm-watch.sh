#!/usr/bin/env bash
# dm-watch.sh — dyad-healer's inter-dyad DM/inbox watcher (the survivor daemon).
#
# WHAT: an event-watch (NOT poll-the-agent) over the Commons falsification/DM channel. Emits a stdout
#   line ONLY when the unread count RISES (new mail) → token-free; silence = no wake. Armed via the
#   Monitor tool, each emitted line becomes one agent notification.
#
# ARM (session-scoped — it dies with the session; re-arm at EVERY stand-up):
#   Monitor(command="bash /mnt/shared_data/dzw/dyad-healer/bin/dm-watch.sh",
#           description="dyad-healer inbox: new-mail / daemon-blind", persistent=true)
#   persistent=true ⇒ no timeout (runs until session end / TaskStop). The arm-line below is a liveness
#   heartbeat: one notification at arm-time confirms it is RUNNING, so thereafter silence = no mail.
#   At stand-up: re-arm AND verify it is alive — a silently-dead watcher emits nothing and is
#   indistinguishable from "no mail" (the watcher has no watcher; our wards' dominant silent-seizure class).
#
# READ-STATE: falsify.py writes the unread cursor to cwd/.falsify-seen.json — here a gitignored SYMLINK
#   to a durable store OUTSIDE the git tree (/mnt/shared_data/dzw/.dyad-healer-state/) so it survives
#   /exit, git clean, and re-clone. Re-create idempotently at stand-up:
#     mkdir -p /mnt/shared_data/dzw/.dyad-healer-state
#     [ -L .falsify-seen.json ] || ln -s /mnt/shared_data/dzw/.dyad-healer-state/falsify-seen.json .falsify-seen.json
#   Read DMs via `falsify.py dm/show` (marks seen), NOT out-of-band `gh api`, or the human unread view
#   drifts. (Rise-detection is monotonic-robust to a stale cursor; the cursor is load-bearing only for
#   the human "what's unread" view.)
#
# PROVENANCE: steward (event-watch / emit-on-rise / token-free core) + bond (separate health gate;
#   time-based blind alert; durable state). dyad-healer +1 = the LAYER-2 counterfeit-green guard: a
#   transport gate (gh) is necessary but NOT sufficient — falsify.py-INTERNAL failure (crash / yaml
#   error) prints no sentinel and a naive parser reads it as "no mail." We distinguish THREE states:
#   "no mail"→0, "mail: N"→N, neither-sentinel→BLIND. (Layer-1 RESIDUAL: per-sibling repo
#   unreachability is swallowed by falsify.py's own `continue` — a falsify.py/Commons fix, flagged to
#   steward, not patchable here.)
set -u
cd /mnt/shared_data/dzw/dyad-healer || exit 1
ME=dyad-healer
INTERVAL=300
echo "▶ $ME IM armed (interval ${INTERVAL}s) — silence = no mail; ⚠ = BLIND; 📬 = new mail"
prev=0; blind_since=0; alerted=0
while true; do
  if gh api rate_limit >/dev/null 2>&1; then                       # layer-1: gh transport gate (separate signal, not output)
    out=$(python3 commons/scripts/falsify.py inbox --me "$ME" 2>/dev/null)
    if printf '%s' "$out" | grep -q 'no mail'; then
      n=0
    elif printf '%s' "$out" | grep -qE 'mail: [0-9]+'; then
      n=$(printf '%s' "$out" | grep -oE 'mail: [0-9]+' | grep -oE '[0-9]+')
    else
      n=""                                                         # layer-2: neither sentinel ⇒ tool failure, NOT zero
    fi
    if [ -z "$n" ]; then
      now=$(date +%s); [ "$blind_since" = 0 ] && blind_since=$now
      if [ "$alerted" = 0 ] && [ $((now - blind_since)) -ge "$INTERVAL" ]; then
        echo "⚠ $ME IM: falsify.py emitted no sentinel >${INTERVAL}s — daemon BLIND (tool error, NOT 'no mail'); check commons/scripts/falsify.py"; alerted=1
      fi
    else
      [ "$alerted" = 1 ] && echo "✓ $ME IM: substrate/tool recovered"
      blind_since=0; alerted=0
      [ "$n" -gt "$prev" ] && echo "📬 $ME: $n unread DM(s) — new mail; pull: python3 commons/scripts/falsify.py dm --me $ME"
      prev=$n
    fi
  else                                                             # transport down — BLIND, not "no mail"
    now=$(date +%s); [ "$blind_since" = 0 ] && blind_since=$now
    if [ "$alerted" = 0 ] && [ $((now - blind_since)) -ge "$INTERVAL" ]; then
      echo "⚠ $ME IM: gh substrate unreachable >${INTERVAL}s — daemon BLIND (NOT 'no mail')"; alerted=1
    fi
  fi
  sleep "$INTERVAL"
done
