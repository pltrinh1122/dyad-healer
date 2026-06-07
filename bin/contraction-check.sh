#!/usr/bin/env bash
# contraction-check.sh — the PHYSICAL bind of the Seizure Invariant (kb/seizure-taxonomy.md).
#
# Invariant: a seizure is a blocking-state CONSERVED under the patient's own actions — the unresolved set
# does not contract. Deterministic detector:  seizure ⟺ activity(W) > 0  ∧  progress(W) == 0.
#   progress(W) = durable LANDED commits (reachable, committer-epoch in window) — NOT working-tree edits
#                 (those can be discarded → never count, which is exactly #1793's wipe), NOT markers.
#   activity(W) = the patient wrote to a transcript in the window.
# A [🚫 BLOCKED] marker is NOT an input here — a guard firing is the loop CLOSING. Markers refuted.
# Epoch-bounded throughout (the 2026-06-07 `--since` local-time bug is the failure this bind forbids).
set -u
REPO=${REPO:-/mnt/shared_data/dzw/dyad-wu-wei}
BRAIN=${BRAIN:-/home/pt/.gemini/antigravity-cli/brain}
WINDOW=${WINDOW:-1800}                                   # seconds

verdict(){ # activity progress -> state  (the invariant's truth table; the guarded core)
  local a=$1 p=$2
  [ "$a" -eq 0 ] && { echo "IDLE"; return; }             # no activity ≠ seizure
  [ "$p" -gt 0 ] && { echo "CONTRACTING"; return; }       # progress refutes seizure, whatever the markers
  echo "SEIZURE-SUSPECTED"                                # busy ∧ no contraction = the invariant
}

selftest(){
  local fail=0
  ck(){ local g; g=$(verdict "$1" "$2"); if [ "$g" = "$3" ]; then echo "  ok  ($1,$2) -> $g";
        else echo "  FAIL ($1,$2) -> $g  (expected $3)"; fail=1; fi; }
  ck 1 0 SEIZURE-SUSPECTED      # busy, nothing lands  = #1793
  ck 1 7 CONTRACTING            # busy, work lands      = 2026-06-07 (refutes marker-alarm)
  ck 0 0 IDLE                   # quiet                 ≠ seizure
  ck 0 4 IDLE                   # progress but now quiet: not acting → IDLE (seizure-Q applies only when active)
  [ $fail -eq 0 ] && { echo "SELFTEST: PASS"; return 0; } || { echo "SELFTEST: FAIL"; return 1; }
}

measure(){
  local thresh; thresh=$(( $(date +%s) - WINDOW ))
  local progress activity
  progress=$(git -C "$REPO" log --all --format='%ct' 2>/dev/null | awk -v t="$thresh" '$1>=t' | wc -l | tr -d ' ')
  activity=$(find "$BRAIN" -name transcript_full.jsonl -printf '%T@\n' 2>/dev/null | awk -v t="$thresh" '$1>=t' | wc -l | tr -d ' ')
  echo "repo=$REPO  window=${WINDOW}s"
  echo "progress(landed commits)=$progress   activity(sessions written)=$activity"
  echo "VERDICT: $(verdict "$activity" "$progress")"
}

case "${1:-live}" in
  --selftest) selftest ;;
  *)          measure ;;
esac
