#!/usr/bin/env bash
# wu-wei-watch.sh — EMS telemetry watcher over the patient (dyad-wu-wei) chat-log history.  [v3 - CSI Guard]
#
# WHAT: watches ALL recently-active Gemini session transcripts and emits a stdout line ONLY on a
#   signal worth a notification. Silence = nominal. Survivor of the rub "constantly monitor wu-wei's
#   chat log for changes": naive change-emit floods and goes blind on session-switch.
#
# v3 hardening (CSI Guard):
#   - JSON-aware: only counts markers in non-MODEL entries (fixes False Positive).
#   - Contraction Invariant: catches markerless identical-repetition loops (activity>0 ∧ progress=0).
#   - Steering Vector: emits explicit CSI STEERING commands on detection.
#   - Self-test interlock: refuses to arm if tests/test_wu_wei_watch.sh fails.
#
set -u

if [ "${RUN_ONCE:-0}" -eq 0 ] && [ "${SKIP_SELF_TEST:-0}" -eq 0 ]; then
  echo "⚙️ wu-wei-watch: Arming sequence initiated. Running V guard-rail self-test..."
  if bash "$(dirname "$0")/../tests/test_wu_wei_watch.sh" >/dev/null 2>&1; then
    echo "✓ Self-test passed. CSI Guard hardened."
  else
    echo "🛑 FATAL: Self-test failed. Refusing to arm a compromised Validate instrument."
    exit 1
  fi
fi

BRAIN=${BRAIN:-/home/pt/.gemini/antigravity-cli/brain}
INTERVAL=${INTERVAL:-30}
IDLE_AFTER=${IDLE_AFTER:-180}                               # all-quiet seconds → declare idle
ACTIVE_WINDOW=${ACTIVE_WINDOW:-900}                         # only track sessions touched within 15min
RESTART_AFTER=${RESTART_AFTER:-300}                         # seizing unbroken this long → NEEDS-RESTART
MARKERS='🚫|BLOCKED|Quarantine Protocol Violation|Harmonization Failure'
RUN_ONCE=${RUN_ONCE:-0}

sid_of(){ basename "$(dirname "$(dirname "$(dirname "$1")")")"; }

check_seizure() {
  local chunk="$1"
  # Check for known markers in non-MODEL output
  if printf '%s\n' "$chunk" | jq -c 'select(.source != "MODEL")' 2>/dev/null | grep -qE "$MARKERS"; then
    echo "marker"
    return 0
  fi
  
  # Check for 3 identical tool calls (contraction invariant: activity>0 & progress=0)
  local tool_calls
  tool_calls=$(printf '%s\n' "$chunk" | jq -c '.tool_calls // empty' 2>/dev/null)
  if [ "$(echo "$tool_calls" | tail -n 3 | sort | uniq | wc -l)" -eq 1 ] && [ "$(echo "$tool_calls" | tail -n 3 | grep -c .)" -eq 3 ]; then
    echo "loop"
    return 0
  fi
  
  echo "clean"
  return 1
}

declare -A OFF SEIZ SEIZ_SINCE RSTD; declare -A SEEN
last_growth=0; idle_state=0
echo "▶ wu-wei-watch v3 armed (interval ${INTERVAL}s) — silence=nominal; 🚨=re-seizure; 🆕=new session; 💤=idle; ⚠=BLIND"

while true; do
  now=$(date +%s)
  if [ ! -d "$BRAIN" ]; then
    [ "$idle_state" != "blind" ] && echo "⚠ wu-wei-watch: brain dir gone ($BRAIN) — BLIND, not 'idle'"
    idle_state="blind"; [ "$RUN_ONCE" -eq 1 ] && break; sleep "$INTERVAL"; continue
  fi
  
  thresh=$(( now - ACTIVE_WINDOW ))
  mapfile -t active < <(find "$BRAIN" -name transcript_full.jsonl -printf '%T@ %p\n' 2>/dev/null \
                        | awk -v t="$thresh" '$1 >= t' | sort -rn | cut -d' ' -f2-)
  if [ "${#active[@]}" -eq 0 ]; then
    [ "$idle_state" != "blind" ] && echo "⚠ wu-wei-watch: no session active in ${ACTIVE_WINDOW}s — BLIND/quiescent"
    idle_state="blind"; [ "$RUN_ONCE" -eq 1 ] && break; sleep "$INTERVAL"; continue
  fi
  [ "$idle_state" = "blind" ] && { echo "✓ wu-wei-watch: session activity resumed"; idle_state=0; }

  grew=0
  for f in "${active[@]}"; do
    sid=$(sid_of "$f")
    size=$(stat -c '%s' "$f" 2>/dev/null || echo 0)
    if [ -z "${SEEN[$sid]:-}" ]; then                      # first sighting of this session
      tailchunk=$(tail -c 8192 "$f" 2>/dev/null)
      reason=$(check_seizure "$tailchunk")
      
      if [ "$reason" = "marker" ]; then
        echo "🆕🚨 wu-wei-watch: new session $sid — re-seizure marker present on arrival. CSI STEERING: HALT session, run bin/retro"
        SEIZ[$sid]=1; SEIZ_SINCE[$sid]=$now
      elif [ "$reason" = "loop" ]; then
        echo "🆕🚨 wu-wei-watch: new session $sid — re-seizure: markerless repetition loop detected (3+ identical tool calls). CSI STEERING: HALT session, run bin/retro"
        SEIZ[$sid]=1; SEIZ_SINCE[$sid]=$now
      else
        echo "🆕 wu-wei-watch: new session $sid (active, nominal)"
      fi
      SEEN[$sid]=1; OFF[$sid]="$size"; last_growth=$now; grew=1; continue
    fi
    
    if [ "$size" -gt "${OFF[$sid]:-0}" ]; then             # delta on a known session
      delta=$(tail -c "+$(( ${OFF[$sid]:-0} + 1 ))" "$f" 2>/dev/null)
      reason=$(check_seizure "$delta")
      
      if [ "$reason" != "clean" ]; then
        if [ -z "${SEIZ[$sid]:-}" ]; then 
           echo "🚨 wu-wei-watch: re-seizure ($reason) in $sid — may be looping. CSI STEERING: HALT session, run bin/retro"
           SEIZ_SINCE[$sid]=$now
        fi
        SEIZ[$sid]=1
      else
        [ -n "${SEIZ[$sid]:-}" ] && { echo "✓ wu-wei-watch: re-seizure markers cleared in $sid"; unset 'SEIZ[$sid]' 'SEIZ_SINCE[$sid]' 'RSTD[$sid]'; }
      fi
      OFF[$sid]="$size"; last_growth=$now; grew=1
    fi
  done

  for sid in "${!SEIZ[@]}"; do
    [ -n "${RSTD[$sid]:-}" ] && continue
    if [ $(( now - ${SEIZ_SINCE[$sid]:-$now} )) -ge "$RESTART_AFTER" ]; then
      echo "🛑 wu-wei-watch: NEEDS-RESTART — $sid seizing ${RESTART_AFTER}s+ without clearing."
      echo "   CSI STEERING PAYLOAD (Restart Escalation - Unresponsive Patient):"
      echo "   1. (Operator) Switch to Frontier hat."
      echo "   2. Execute \`/exit\` in the patient's console."
      echo "   3. Relaunch the patient."
      echo "   4. Deliver the re-orient seed to the patient (S8)."
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
  [ "$RUN_ONCE" -eq 1 ] && break
  sleep "$INTERVAL"
done
