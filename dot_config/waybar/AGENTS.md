# Waybar Configuration Guidelines

## Scope

This directory contains the chezmoi source for Waybar.

Read `PROJECT.md` before making changes.

## Principles

- Keep the configuration minimal.
- Preserve existing behavior unless a change is explicitly discussed.
- Avoid unnecessary scripts, dependencies, and configuration layers.
- Keep JSONC and CSS readable and consistent.

## Visual Identity

The existing visual design is intentional.

- Preserve all nine workspace icon glyphs exactly.
- Preserve individual workspace colors.
- Do not introduce Catppuccin colors into Waybar without explicit approval.
- Preserve the black translucent background.
- Preserve existing fonts, sizes, spacing, transitions, and tooltip styling unless changes are discussed.

Do not remove existing CSS selectors simply because their corresponding modules are not currently enabled.

## Workspace Configuration

- Keep all nine persistent workspaces.
- Preserve their names and icon mappings.
- Keep workspace mouse-wheel switching disabled.
- Do not change workspace ordering or identifiers without checking Sway configuration.

## Modules

Preserve the existing three-zone layout:

- Left: workspaces and Sway mode.
- Center: active window title.
- Right: system tray and clock.

Do not add battery, volume, Bluetooth, or network modules without explicit discussion.

## Changes & Validation

Before editing:

1. Inspect both configuration files.
2. Check relevant Waybar options against the installed version.
3. Explain behavioral or visual changes before implementing them.
4. Preserve unrelated settings.

Before committing:

1. Validate JSON syntax.
2. Compare source and live files.
3. Reload Waybar and inspect runtime logs.
4. Verify bar dimensions and module behavior.
5. Review root README.md and TODO.md.
6. Review shared and project-specific documentation.
7. Inspect the complete Git diff.
8. Ask for approval before committing.

Do not run `chezmoi apply` during project migration. Deployment happens after all projects are complete.
