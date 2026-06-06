#!/usr/bin/env bash
# wu-wei-watch.sh — EMS telemetry watcher over the patient (dyad-wu-wei) chat-log history.
#
# WHAT: follows the patient's *active* Gemini session transcript and emits a stdout line ONLY on a
#   state-transition worth a notification. Silence = patient active-but-nominal OR quietly idle
#   (the idle/active transitions disambiguate; silence is never assumed-healthy). Survivor of the
#   rub "constantly monitor wu-wei's chat log for changes": naive change-emit floods + goes blind on
#   session-switch (the patient already moved 909a7da7 → 4b40b685 mid-case). Mirrors dm-watch.sh:
#   three-state (SIGNAL / nominal-silence / BLIND), token-free on nominal, durable state, pgrep-liveness.
#
# ARM (session-scoped; re-arm at stand-up; verify-alive via pgrep, NOT TaskList):
#   Monitor(command="bash /mnt/shared_data/dzw/dyad-healer/bin/wu-wei-watch.sh",
#           description="wu-wei EMS telemetry: re-seizure / session-switch / idle / blind", persistent=true)
#   pgrep -af wu-wei-watch.sh    # the load-bearing liveness check
#
# EMITS:  🚨 re-seizure marker (onset)  ·  ✓ markers cleared  ·  🔀 session switch  ·  ▶ active again
#         ·  💤 idle (no growth)  ·  ⚠ BLIND (brain/transcript gone — NOT 'patient idle')
# RESIDUAL (flagged, not gold-plated): detects the EXPLICIT loop markers below; a silent loop with no
#   marker (pure identical-tool repetition) is not yet caught — add a repetition heuristic only if a
#   real case shows markerless looping.
set -u
BRAIN=/home/pt/.gemini/antigravity-cli/brain
INTERVAL=30
IDLE_AFTER=180                                              # no-growth seconds → declare idle
MARKERS='🚫|BLOCKED|Quarantine Protocol Violation|Harmonization Failure'

sid_of(){ basename "$(dirname "$(dirname "$(dirname "$1")")")"; }   # …/<sid>/.system_generated/logs/transcript_full.jsonl

prev_path=""; prev_off=0; state="init"; last_growth=0
echo "▶ wu-wei-watch armed (interval ${INTERVAL}s) — silence=nominal; 🚨=re-seizure; 🔀=switch; 💤=idle; ⚠=BLIND"

while true; do
  now=$(date +%s)
  if [ ! -d "$BRAIN" ]; then
    [ "$state" != "blind" ] && echo "⚠ wu-wei-watch: brain dir gone ($BRAIN) — BLIND, not 'patient idle'"
    state="blind"; sleep "$INTERVAL"; continue
  fi
  active=$(find "$BRAIN" -name transcript_full.jsonl -printf '%T@ %p\n' 2>/dev/null | sort -rn | head -1 | cut -d' ' -f2-)
  if [ -z "$active" ]; then
    [ "$state" != "blind" ] && echo "⚠ wu-wei-watch: no transcript found under $BRAIN — BLIND"
    state="blind"; sleep "$INTERVAL"; continue
  fi
  size=$(stat -c '%s' "$active" 2>/dev/null || echo 0)

  if [ "$active" != "$prev_path" ]; then                    # session switch (or first adoption)
    sid=$(sid_of "$active")
    if [ -z "$prev_path" ]; then                            # arm-time snapshot: scan recent tail once
      tailchunk=$(tail -c 8192 "$active" 2>/dev/null)
      if printf '%s' "$tailchunk" | grep -qE "$MARKERS"; then
        echo "🚨 wu-wei-watch: ARM snapshot — re-seizure marker present in active session $sid"
        state="seizing"
      else
        echo "✓ wu-wei-watch: ARM snapshot — active session $sid, nominal (no re-seizure markers)"
        state="active"
      fi
    else
      echo "🔀 wu-wei-watch: session switch → $sid (patient re-oriented into a new session)"
      state="active"
    fi
    prev_path="$active"; prev_off="$size"; last_growth=$now
    sleep "$INTERVAL"; continue
  fi

  if [ "$size" -gt "$prev_off" ]; then                      # new content — scan only the delta
    delta=$(tail -c "+$((prev_off + 1))" "$active" 2>/dev/null)
    if printf '%s' "$delta" | grep -qE "$MARKERS"; then
      hit=$(printf '%s' "$delta" | grep -oE "$MARKERS" | head -1)
      [ "$state" != "seizing" ] && echo "🚨 wu-wei-watch: re-seizure marker '$hit' in $(sid_of "$active") — patient may be looping"
      state="seizing"
    else
      [ "$state" = "seizing" ] && echo "✓ wu-wei-watch: re-seizure markers cleared — patient progressing"
      [ "$state" = "idle" ]    && echo "▶ wu-wei-watch: patient active again"
      state="active"
    fi
    prev_off="$size"; last_growth=$now
  else                                                       # no growth
    if { [ "$state" = "active" ] || [ "$state" = "seizing" ]; } && [ $((now - last_growth)) -ge "$IDLE_AFTER" ]; then
      echo "💤 wu-wei-watch: patient idle (no log growth ${IDLE_AFTER}s+) — dormant or hung"
      state="idle"
    fi
  fi
  sleep "$INTERVAL"
done
