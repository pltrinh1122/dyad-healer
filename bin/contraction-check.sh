#!/usr/bin/env bash
# contraction-check.sh — the PHYSICAL bind of the Seizure Invariant (kb/seizure-taxonomy.md).
#
# Invariant: a seizure is a blocking-state CONSERVED under the patient's own actions — the unresolved set
# does not contract. Deterministic detector:  seizure ⟺ activity(W_a) > 0  ∧  progress(W_p) == 0.
#   progress(W_p) = durable LANDED commits — reachable, committer-epoch in the PROGRESS window; merges
#                   included (a merge is the strongest landing). NOT working-tree edits (discardable →
#                   never count, exactly #1793's wipe), NOT markers.
#   activity(W_a) = the patient wrote to a transcript in the (shorter) ACTIVITY window.
#
# CADENCE CALIBRATION (2026-06-07): progress and activity use SEPARATE look-backs. A single fixed window
#   false-positived legitimate slow-cadence work (busy now, last commit 40 min ago → progress==0 → false
#   SEIZURE). Splitting them calibrates the detector to commit cadence: "is it acting NOW" (short W_a) is
#   asked over a different horizon than "has it landed durable progress at its cadence" (longer W_p).
#   W_p defaults to ~3 activity-windows (ultradian-tolerant) so a normal deep-work gap is not a seizure.
#   Node-status advance was considered as a third progress signal and REJECTED: it would couple to the
#   patient's internal frontier_state, and the patient is live/self-modifying — never hard-depend on its
#   current state (CLAUDE.md). Commits+merges are the substrate-generic durable signal.
#
# A [🚫 BLOCKED] marker is NOT an input here — a guard firing is the loop CLOSING. Markers refuted.
# Epoch-bounded throughout (the 2026-06-07 `--since` local-time bug is the failure this bind forbids).
set -u
REPO=${REPO:-/mnt/shared_data/dzw/dyad-wu-wei}
BRAIN=${BRAIN:-/home/pt/.gemini/antigravity-cli/brain}
ACTIVITY_WINDOW=${ACTIVITY_WINDOW:-${WINDOW:-1800}}      # seconds — "is the patient acting now"
PROGRESS_WINDOW=${PROGRESS_WINDOW:-5400}                 # seconds — "has durable progress landed at cadence"

verdict(){ # activity progress -> state  (the invariant's truth table; the guarded core)
  local a=$1 p=$2
  [ "$a" -eq 0 ] && { echo "IDLE"; return; }             # no activity ≠ seizure
  [ "$p" -gt 0 ] && { echo "CONTRACTING"; return; }       # progress refutes seizure, whatever the markers
  echo "SEIZURE-SUSPECTED"                                # busy ∧ no contraction = the invariant
}

count_progress(){ # repo since_epoch -> count of landed commits (incl. merges) committed at/after since
  git -C "$1" log --all --format='%ct' 2>/dev/null | awk -v t="$2" '$1>=t' | wc -l | tr -d ' '
}
count_activity(){ # brain since_epoch -> count of transcripts written at/after since
  find "$1" -name transcript_full.jsonl -printf '%T@\n' 2>/dev/null | awk -v t="$2" '$1>=t' | wc -l | tr -d ' '
}

selftest(){
  local fail=0
  ck(){ local g; g=$(verdict "$1" "$2"); if [ "$g" = "$3" ]; then echo "  ok  verdict($1,$2) -> $g";
        else echo "  FAIL verdict($1,$2) -> $g  (expected $3)"; fail=1; fi; }
  cke(){ if [ "$1" = "$2" ]; then echo "  ok  $3 = $1"; else echo "  FAIL $3 = $1 (expected $2)"; fail=1; fi; }

  # 1) the invariant truth table (the guarded core)
  ck 1 0 SEIZURE-SUSPECTED      # busy, nothing lands  = #1793
  ck 1 7 CONTRACTING            # busy, work lands      = 2026-06-07 (refutes marker-alarm)
  ck 0 0 IDLE                   # quiet                 ≠ seizure
  ck 0 4 IDLE                   # progress but now quiet: not acting → IDLE

  local now; now=$(date +%s)

  # 2) progress counter over a fixture repo with backdated commits (incl. a merge)
  local tr; tr=$(mktemp -d)
  git -C "$tr" init -q; git -C "$tr" config user.email t@t; git -C "$tr" config user.name t
  _commit(){ GIT_COMMITTER_DATE="@$1" GIT_AUTHOR_DATE="@$1" git -C "$tr" commit -q --allow-empty -m "$2"; }
  _commit $((now-9000)) old            # 150 min ago — outside both windows
  _commit $((now-2400)) slow           # 40 min ago  — inside PROGRESS_WINDOW, outside ACTIVITY_WINDOW
  git -C "$tr" checkout -q -b side; _commit $((now-700)) side
  git -C "$tr" checkout -q master 2>/dev/null || git -C "$tr" checkout -q main
  GIT_COMMITTER_DATE="@$((now-600))" GIT_AUTHOR_DATE="@$((now-600))" git -C "$tr" merge -q --no-ff side -m merge
  cke "$(count_progress "$tr" $((now-1800)))" 2 "progress(30min) counts the recent commit + merge, not the 40/150-min ones"
  cke "$(count_progress "$tr" $((now-5400)))" 3 "progress(90min) also counts the 40-min slow commit (cadence-tolerant; 150-min one still excluded)"
  cke "$(count_progress "$tr" $((now-600)))" 1 "progress(10min) counts only the merge (merge IS a landed signal)"
  rm -rf "$tr"

  # 3) activity counter over a fixture brain dir with a backdated transcript
  local tb; tb=$(mktemp -d); mkdir -p "$tb/s1"; touch "$tb/s1/transcript_full.jsonl"
  touch -d "@$((now-600))" "$tb/s1/transcript_full.jsonl"
  cke "$(count_activity "$tb" $((now-1800)))" 1 "activity(30min) sees the 10-min-old transcript write"
  cke "$(count_activity "$tb" $((now-300)))" 0 "activity(5min) does not (write was 10 min ago)"
  rm -rf "$tb"

  # 4) end-to-end: the slow-cadence false-positive the calibration fixes
  local tr2; tr2=$(mktemp -d)
  git -C "$tr2" init -q; git -C "$tr2" config user.email t@t; git -C "$tr2" config user.name t
  GIT_COMMITTER_DATE="@$((now-2400))" GIT_AUTHOR_DATE="@$((now-2400))" git -C "$tr2" commit -q --allow-empty -m slow
  local a p
  a=1   # patient is acting now
  p=$(count_progress "$tr2" $((now-PROGRESS_WINDOW)))
  cke "$(verdict "$a" "$p")" CONTRACTING "calibrated: busy now + commit 40min ago -> CONTRACTING (not false SEIZURE)"
  p=$(count_progress "$tr2" $((now-1800)))
  cke "$(verdict "$a" "$p")" SEIZURE-SUSPECTED "naive single 30min window WOULD have false-positived (the bug this fixes)"
  rm -rf "$tr2"

  [ $fail -eq 0 ] && { echo "SELFTEST: PASS"; return 0; } || { echo "SELFTEST: FAIL"; return 1; }
}

measure(){
  local now; now=$(date +%s)
  local progress activity
  progress=$(count_progress "$REPO" $((now-PROGRESS_WINDOW)))
  activity=$(count_activity "$BRAIN" $((now-ACTIVITY_WINDOW)))
  echo "repo=$REPO  activity_window=${ACTIVITY_WINDOW}s  progress_window=${PROGRESS_WINDOW}s"
  echo "progress(landed commits+merges)=$progress   activity(sessions written)=$activity"
  echo "VERDICT: $(verdict "$activity" "$progress")"
}

case "${1:-live}" in
  --selftest) selftest ;;
  *)          measure ;;
esac
