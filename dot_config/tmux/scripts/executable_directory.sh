#!/usr/bin/env bash

# ---------------- Directory Display ----------------

DIR="${1:-$PWD}"

# Prefer the Git repository root when inside a repository.
if GIT_ROOT=$(git -C "$DIR" rev-parse --show-toplevel 2>/dev/null); then
  REPO_NAME="${GIT_ROOT##*/}"
  RELATIVE_DIR="${DIR#"$GIT_ROOT"}"

  if [[ -z "$RELATIVE_DIR" ]]; then
    printf '%s\n' "$REPO_NAME"
  else
    printf '%s%s\n' "$REPO_NAME" "$RELATIVE_DIR"
  fi

  exit 0
fi

# Otherwise, display paths relative to HOME when possible.
case "$DIR" in
  "$HOME")
    printf '~\n'
    ;;
  "$HOME"/*)
    printf '~/%s\n' "${DIR#"$HOME"/}"
    ;;
  *)
    printf '%s\n' "$DIR"
    ;;
esac
