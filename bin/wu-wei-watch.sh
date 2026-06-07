#!/usr/bin/env bash
# wu-wei-watch.sh — EMS telemetry watcher over the patient (dyad-wu-wei) chat-log history.  [v2]
#
# WHAT: watches ALL recently-active Gemini session transcripts and emits a stdout line ONLY on a
#   signal worth a notification. Silence = nominal. Survivor of the rub "constantly monitor wu-wei's
#   chat log for changes": naive change-emit floods and goes blind on session-switch. Mirrors
#   dm-watch.sh: three-state (SIGNAL / nominal-silence / BLIND), token-free on nominal, pgrep-liveness.
#
# v1→v2 (falsified in the field 2026-06-06): the patient runs TWO concurrent sessions, so "follow the
#   single most-recent transcript" (v1) (a) spammed a 🔀 flap every tick as most-recent-mtime ping-ponged,
#   and (b) MISSED markers — each flap hit the switch-branch that reset the byte-offset to current size
#   WITHOUT scanning the delta. v2 tracks per-session offsets across all recently-active sessions and
#   scans every session's delta. Genuinely-new sessions emit ONCE (🆕); benign ping-pong is silent.
#
# ARM (session-scoped; re-arm at stand-up; verify-alive via pgrep, NOT TaskList):
#   Monitor(command="bash .../bin/wu-wei-watch.sh", description="wu-wei EMS telemetry", persistent=true)
#   pgrep -af wu-wei-watch.sh    # load-bearing liveness check
#
# EMITS: 🚨 re-seizure marker (onset, per-session) · ✓ markers cleared · 🆕 new session · 💤 all idle
#        · ▶ active again · ⚠ BLIND (brain gone — NOT 'idle') · 🛑 NEEDS-RESTART (seizing > RESTART_AFTER,
#        won't clear → escalate per governance-map §Restart escalation; Healer never restarts directly)
# RESIDUAL / KNOWN FLAWS (do NOT arm for a live cut until addressed — fold into the CIS-Guards frontier):
#   1. FALSE POSITIVE (found 2026-06-06 during V-on-V validation): grep matches marker strings in MODEL
#      *prose* — a patient discussing/retro-ing a past seizure ("the Harmonization Failure was eradicated",
#      "the BLOCKED loop") trips 🚨/🛑 with no live loop. Fix: JSON-aware — only count a marker in a
#      non-MODEL entry (RUN_COMMAND output / SYSTEM message), or detect the LOOP (repetition) not the string.
#   2. FALSE NEGATIVE: a markerless identical-repetition loop is not caught (candidate: 909a7da7 case-03).
#   3. FIXED + validated 2026-06-06: find -newermt does NOT parse relative dates ("-900 seconds") — it
#      silently matched nothing, so v2 scanned nothing. Now epoch-filtered in awk; live-run confirmed 🆕.
#   The recurring pattern (3 flaws in one hand-rolled guard) is the empirical case for CIS Guards.
set -u
BRAIN=/home/pt/.gemini/antigravity-cli/brain
INTERVAL=30
IDLE_AFTER=180                                              # all-quiet seconds → declare idle
ACTIVE_WINDOW=900                                           # only track sessions touched within 15min
RESTART_AFTER=300                                           # seizing unbroken this long → NEEDS-RESTART
MARKERS='🚫|BLOCKED|Quarantine Protocol Violation|Harmonization Failure'

sid_of(){ basename "$(dirname "$(dirname "$(dirname "$1")")")"; }

declare -A OFF SEIZ SEIZ_SINCE RSTD; declare -A SEEN
last_growth=0; idle_state=0
echo "▶ wu-wei-watch v2 armed (interval ${INTERVAL}s) — silence=nominal; 🚨=re-seizure; 🆕=new session; 💤=idle; ⚠=BLIND"

while true; do
  now=$(date +%s)
  if [ ! -d "$BRAIN" ]; then
    [ "$idle_state" != "blind" ] && echo "⚠ wu-wei-watch: brain dir gone ($BRAIN) — BLIND, not 'idle'"
    idle_state="blind"; sleep "$INTERVAL"; continue
  fi
  # recently-active transcripts (mtime within window), newest first.
  # NB: find -newermt does NOT parse relative forms ("-900 seconds" / "15 minutes ago") — they silently
  # match nothing (verified 2026-06-06; the bug that made v2 scan nothing). Filter by epoch in awk instead.
  thresh=$(( now - ACTIVE_WINDOW ))
  mapfile -t active < <(find "$BRAIN" -name transcript_full.jsonl -printf '%T@ %p\n' 2>/dev/null \
                        | awk -v t="$thresh" '$1 >= t' | sort -rn | cut -d' ' -f2-)
  if [ "${#active[@]}" -eq 0 ]; then
    [ "$idle_state" != "blind" ] && echo "⚠ wu-wei-watch: no session active in ${ACTIVE_WINDOW}s — BLIND/quiescent"
    idle_state="blind"; sleep "$INTERVAL"; continue
  fi
  [ "$idle_state" = "blind" ] && { echo "✓ wu-wei-watch: session activity resumed"; idle_state=0; }

  grew=0
  for f in "${active[@]}"; do
    sid=$(sid_of "$f")
    size=$(stat -c '%s' "$f" 2>/dev/null || echo 0)
    if [ -z "${SEEN[$sid]:-}" ]; then                      # first sighting of this session
      tailchunk=$(tail -c 8192 "$f" 2>/dev/null)
      if printf '%s' "$tailchunk" | grep -qE "$MARKERS"; then
        echo "🆕🚨 wu-wei-watch: new session $sid — re-seizure marker present on arrival"; SEIZ[$sid]=1; SEIZ_SINCE[$sid]=$now
      else
        echo "🆕 wu-wei-watch: new session $sid (active, nominal)"
      fi
      SEEN[$sid]=1; OFF[$sid]="$size"; last_growth=$now; grew=1; continue
    fi
    if [ "$size" -gt "${OFF[$sid]:-0}" ]; then             # delta on a known session
      delta=$(tail -c "+$(( ${OFF[$sid]:-0} + 1 ))" "$f" 2>/dev/null)
      if printf '%s' "$delta" | grep -qE "$MARKERS"; then
        hit=$(printf '%s' "$delta" | grep -oE "$MARKERS" | head -1)
        if [ -z "${SEIZ[$sid]:-}" ]; then echo "🚨 wu-wei-watch: re-seizure marker '$hit' in $sid — may be looping"; SEIZ_SINCE[$sid]=$now; fi
        SEIZ[$sid]=1
      else
        [ -n "${SEIZ[$sid]:-}" ] && { echo "✓ wu-wei-watch: re-seizure markers cleared in $sid"; unset 'SEIZ[$sid]' 'SEIZ_SINCE[$sid]' 'RSTD[$sid]'; }
      fi
      OFF[$sid]="$size"; last_growth=$now; grew=1
    fi
  done

  # sustained re-seizure that won't clear (or hung mid-seizure) → NEEDS-RESTART: the escalation trigger
  for sid in "${!SEIZ[@]}"; do
    [ -n "${RSTD[$sid]:-}" ] && continue
    if [ $(( now - ${SEIZ_SINCE[$sid]:-$now} )) -ge "$RESTART_AFTER" ]; then
      echo "🛑 wu-wei-watch: NEEDS-RESTART — $sid seizing ${RESTART_AFTER}s+ without clearing; restart is a Frontier-Operator act (escalate per governance-map §Restart escalation)"
      RSTD[$sid]=1
    fi
  done

  if [ "$grew" -eq 1 ]; then
    [ "$idle_state" = "idle" ] && echo "▶ wu-wei-watch: patient active again"
    idle_state=0
  elif [ "$idle_state" != "idle" ] && [ "$last_growth" -ne 0 ] && [ $((now - last_growth)) -ge "$IDLE_AFTER" ]; then
    echo "💤 wu-wei-watch: all sessions idle (no growth ${IDLE_AFTER}s+) — dormant or hung"
    idle_state="idle"
  fi
  sleep "$INTERVAL"
done
