#!/usr/bin/env bash
# tests/test_wu_wei_watch.sh

set -euo pipefail

MOCK_BRAIN="$(pwd)/.tmp_mock_brain"
mkdir -p "$MOCK_BRAIN"
export BRAIN="$MOCK_BRAIN"
export RUN_ONCE=1
export INTERVAL=0

cleanup() {
  rm -rf "$MOCK_BRAIN"
}
trap cleanup EXIT

echo "=== Setup: Generating test fixtures ==="

# 1. Nominal transcript
mkdir -p "$MOCK_BRAIN/session_nominal/.system_generated/logs"
echo '{"source":"SYSTEM","content":"Doing fine"}' > "$MOCK_BRAIN/session_nominal/.system_generated/logs/transcript_full.jsonl"

# 2. False Positive transcript (Model discussing a marker)
mkdir -p "$MOCK_BRAIN/session_false_pos/.system_generated/logs"
echo '{"source":"MODEL","content":"The BLOCKED error was bad"}' > "$MOCK_BRAIN/session_false_pos/.system_generated/logs/transcript_full.jsonl"

# 3. Seizure Marker transcript
mkdir -p "$MOCK_BRAIN/session_marker_seizure/.system_generated/logs"
echo '{"source":"SYSTEM","content":"Process died with Harmonization Failure."}' > "$MOCK_BRAIN/session_marker_seizure/.system_generated/logs/transcript_full.jsonl"

# 4. Markerless Loop transcript (3 repeated identical tool calls)
mkdir -p "$MOCK_BRAIN/session_markerless_loop/.system_generated/logs"
cat << 'EOF' > "$MOCK_BRAIN/session_markerless_loop/.system_generated/logs/transcript_full.jsonl"
{"source":"MODEL","tool_calls":[{"name":"ls","args":{"path":"."}}]}
{"source":"MODEL","tool_calls":[{"name":"ls","args":{"path":"."}}]}
{"source":"MODEL","tool_calls":[{"name":"ls","args":{"path":"."}}]}
EOF

# Ensure recent mtime
touch "$MOCK_BRAIN"/*/.system_generated/logs/transcript_full.jsonl

echo "=== Running wu-wei-watch.sh ==="
OUTPUT=$(bash bin/wu-wei-watch.sh)
echo "$OUTPUT"

echo "=== Verification ==="

check_contains() {
  if ! echo "$OUTPUT" | grep -q "$1"; then
    echo "❌ FAILED: Expected output to contain '$1'"
    exit 1
  fi
}

check_not_contains() {
  if echo "$OUTPUT" | grep -q "$1"; then
    echo "❌ FAILED: Output should not contain '$1'"
    exit 1
  fi
}

echo "Testing Nominal..."
check_contains "session_nominal (active, nominal)"

echo "Testing False Positive filtering (JSON-awareness)..."
check_contains "session_false_pos (active, nominal)"
check_not_contains "session_false_pos.*re-seizure"

echo "Testing Seizure Marker..."
check_contains "session_marker_seizure.*re-seizure"
# Enforce the CSI Steering Vector
check_contains "CSI STEERING: HALT session, run bin/retro"

echo "Testing Markerless Loop (Contraction Invariant)..."
check_contains "session_markerless_loop.*re-seizure.*repetition loop"
check_contains "CSI STEERING: HALT session, run bin/retro"

echo "✅ All tests passed. The CSI Guard is hardened."
