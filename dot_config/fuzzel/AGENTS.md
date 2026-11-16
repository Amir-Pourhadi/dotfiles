# Fuzzel — Agent Instructions

## Purpose

Maintain Fuzzel as the primary launcher and command interface for the Sway desktop.

## Development Rules

- Preserve the existing keyboard workflow and Sway integration.
- Do not reintroduce Walker as the primary launcher.
- Keep launcher entry points in Bash.
- Keep scripts modular and independently executable.
- Prefer existing system tools and installed dependencies.
- Do not introduce dependencies without a concrete reason.
- Preserve existing behavior unless a change is intentional.
- Avoid unnecessary refactoring of working scripts.

## Before Changing Configuration

1. Read `PROJECT.md` for the current architecture and dependencies.
2. Inspect the relevant configuration and scripts.
3. Check related Sway bindings before changing launcher behavior.
4. Verify dependencies before introducing new commands.
5. Validate configuration and script syntax after changes.

## Documentation

Update `PROJECT.md` when scripts, dependencies, integrations, or architecture change.

Keep project knowledge in `PROJECT.md` rather than duplicating it here.
