# Dunst — Agent Instructions

## Purpose

Maintain Dunst as the notification daemon for the Sway desktop.

## Development Rules

- Preserve existing notification behavior unless a change is intentional.
- Keep notification presentation separate from persistent storage.
- Keep the archive helper in Python.
- Use Python's standard library for SQLite operations.
- Preserve the existing database and notification history.
- Avoid unnecessary dependencies and abstractions.
- Keep Fuzzel integration independent of Dunst's internal implementation.
- Do not manage runtime database files through chezmoi.

## Before Changing Configuration

1. Read `PROJECT.md` for the current architecture.
2. Inspect `dunstrc` and the relevant helper scripts.
3. Check related Fuzzel and Sway integrations when necessary.
4. Verify dependencies before introducing new commands.
5. Validate configuration and test affected behavior.

## Documentation

Update `PROJECT.md` when notification behavior, storage, dependencies, or integration architecture changes.

Keep project knowledge in `PROJECT.md` rather than duplicating it here.
