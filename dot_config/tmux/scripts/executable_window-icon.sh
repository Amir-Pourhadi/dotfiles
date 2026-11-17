#!/usr/bin/env bash

# ---------------- Window Icon ----------------

CONFIG="$HOME/.config/tmux/scripts/icons.conf"
TITLE="${1:-}"
FALLBACK_ICON="󰈔"

# Find an exact, case-insensitive window-name match.
ICON=$(awk -F= -v title="$TITLE" '
  tolower($1) == tolower(title) {
    print substr($0, index($0, "=") + 1)
    exit
  }
' "$CONFIG" 2>/dev/null)

# Use a fallback when no matching icon exists.
ICON="${ICON:-$FALLBACK_ICON}"

printf '%s %s' "$ICON" "$TITLE"
