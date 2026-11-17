# tmux Configuration Guidelines

## Scope

This directory contains the chezmoi source for the tmux configuration.

Read `PROJECT.md` before making changes.

## Principles

- Keep the configuration minimal and maintainable.
- Preserve existing behavior unless a change is explicitly discussed.
- Avoid unnecessary plugins and abstractions.
- Do not introduce automatic session management.
- Keep plugin installations outside the repository.

## Window Management

- Window names must remain manually controlled.
- Keep both `allow-rename` and `automatic-rename` disabled.
- Derive window icons from manually assigned names.
- Keep icon mappings in `scripts/icons.conf`.

## Scripts

- Use clear variable names and meaningful comments.
- Quote shell expansions appropriately.
- Handle missing icon mappings and unavailable Git repositories gracefully.
- Preserve executable permissions through chezmoi's `executable_` prefix.
- Avoid unnecessary dependencies.

## Theme

- Use Catppuccin Mocha.
- Preserve rounded window indicators.
- Keep the directory module as the only active status module.
- Preserve the transparent status background.

## Changes & Validation

Before editing:

1. Inspect the existing configuration and scripts.
2. Check plugin compatibility before using plugin options.
3. Explain meaningful architectural changes.

Before committing:

1. Validate tmux configuration syntax.
2. Run shell syntax checks.
3. Test custom scripts.
4. Inspect the staged diff.
5. Review root README.md and TODO.md.
6. Review shared and project-specific documentation.
7. Ask for approval before committing.

Do not run `chezmoi apply` during project migration. Deployment happens after all projects are complete.
