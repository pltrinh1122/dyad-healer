#!/usr/bin/env bash
# bin/sync-memory.sh — Automation for native↔substrate memory cache write-back
#
# Automates the coherence mechanism defined in memory/README.md.
# Syncs between the engine-agnostic system of record (substrate memory/)
# and the engine-native runtime cache (e.g. ~/.claude/.../memory/).
#
# Usage:
#   bin/sync-memory.sh status  # show differences
#   bin/sync-memory.sh push    # substrate -> native cache (hydrate cache)
#   bin/sync-memory.sh pull    # native cache -> substrate (save to record)

set -euo pipefail

die() { printf 'sync-memory.sh: %s\n' "$1" >&2; exit 1; }

# The substrate is the system of record
REPO_ROOT="$(pwd)"
SUBSTRATE_DIR="${REPO_ROOT}/memory"
[[ -d "$SUBSTRATE_DIR" ]] || die "Not run from repo root: no 'memory/' directory found at $SUBSTRATE_DIR"

# Determine native cache location (Claude)
PROJECT_NAME="$(pwd | tr '/_' '--')"
NATIVE_DIR="$HOME/.claude/projects/${PROJECT_NAME}/memory"

[[ -d "$NATIVE_DIR" ]] || die "Native cache directory not found: $NATIVE_DIR"

op="${1:-status}"

case "$op" in
  status)
    printf "Status: Substrate (%s) vs Native Cache (%s)\n" "$SUBSTRATE_DIR" "$NATIVE_DIR"
    # Using diff -qr; true prevents set -e from exiting if there are differences
    diff -qr "$SUBSTRATE_DIR" "$NATIVE_DIR" || true
    ;;
  push)
    printf "Pushing (Substrate -> Native Cache)...\n"
    rsync -av --delete "${SUBSTRATE_DIR}/" "${NATIVE_DIR}/"
    printf "Done. Cache hydrated.\n"
    ;;
  pull)
    printf "Pulling (Native Cache -> Substrate)...\n"
    rsync -av --delete "${NATIVE_DIR}/" "${SUBSTRATE_DIR}/"
    printf "Done. Record updated.\n"
    ;;
  *)
    die "Unknown operation '$op'. Usage: sync-memory.sh [status|push|pull]"
    ;;
esac
