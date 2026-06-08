#!/usr/bin/env bash
# bin/git.sh — Dyad-Healer substrate-access wrapper for git (v0.1)
#
# Holding structure: declared-policy single-file wrapper, permission-gated, fail-closed
# (synthesized via dialectical falsification of 3 alternatives — see ledger 2026-05-29).
# The Healer invokes git mutations ONLY through this choke-point; the harness grants the
# NARROW permission Bash(.../bin/git.sh:*) — never broad `git`. Boundary integrity rests on
# edits to THIS file being load-bearing (chat-ratified), not on file permissions.
# Operational-infra, deliberately minimal — not the seed of a code engine (externality stands).
#
# Usage:  bin/git.sh <op> [args...]
#         GIT_SH_DRY_RUN=1 bin/git.sh push     # print the resolved command, do not execute
#
# ── DECLARED ACCESS POLICY (Operator-governed) ───────────────────────────────────
# Edit THIS block to widen/narrow access. The mechanism below changes rarely.
ALLOWED_OPS=(push add commit)                   # ops the Healer may invoke; all else refused
PROTECTED_BRANCHES=(main)                       # branches on which rewriting flags are refused
FORCE_FLAGS=(--force -f --force-with-lease)     # flags treated as history-rewriting
# ─────────────────────────────────────────────────────────────────────────────────

set -euo pipefail

die() { printf 'git.sh: REFUSED — %s\n' "$1" >&2; exit 1; }

contains() { local needle="$1"; shift; local x; for x in "$@"; do [[ "$x" == "$needle" ]] && return 0; done; return 1; }

run() {
  printf 'git.sh: → git %s\n' "$*" >&2
  if [[ "${GIT_SH_DRY_RUN:-0}" == "1" ]]; then
    printf 'git.sh: (dry-run; not executed)\n' >&2
    return 0
  fi
  command git "$@"
}

[[ $# -ge 1 ]] || die "no op given (usage: git.sh <op> [args])"
op="$1"; shift

git rev-parse --is-inside-work-tree >/dev/null 2>&1 || die "not inside a git work tree"
contains "$op" "${ALLOWED_OPS[@]}" || die "op '$op' is not in declared ALLOWED_OPS (fail-closed)"

case "$op" in
  push)
    branch="$(git rev-parse --abbrev-ref HEAD)"
    if contains "$branch" "${PROTECTED_BRANCHES[@]}"; then
      for arg in "$@"; do
        contains "$arg" "${FORCE_FLAGS[@]}" \
          && die "history-rewriting flag '$arg' refused on protected branch '$branch'"
      done
    fi
    run push origin "$branch" "$@"
    ;;
  add|commit)
    run "$op" "$@"
    ;;
  *)
    die "no handler for op '$op' (unreachable; ALLOWED_OPS gate)"
    ;;
esac
