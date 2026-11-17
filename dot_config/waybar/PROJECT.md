# Waybar

## Overview

A minimal Waybar configuration for Fedora 45 with Sway on Wayland.

Priorities:

- Icon-only workspace navigation.
- A centered active-window title.
- A minimal system tray and 24-hour clock.
- Fixed 32px bar height.
- Preserve the established visual design.

## Architecture

The configuration consists of two files:

- `config.jsonc`: Bar layout, modules, workspace definitions, and module options.
- `style.css`: Colors, typography, spacing, transitions, and tooltips.

No custom scripts or additional configuration layers are required.

## Layout

The bar is positioned at the top of the screen.

| Position | Modules |
|---|---|
| Left | `sway/workspaces`, `sway/mode` |
| Center | `sway/window` |
| Right | `tray`, `clock` |

Bar height: 32px.

## Workspaces

Nine persistent Sway workspaces:

1. Web
2. Terminal
3. Code
4. Files
5. Chat
6. Media
7. Games
8. Tools
9. Scratch

Workspace labels and Nerd Font icons are explicitly mapped in `config.jsonc`.

Mouse-wheel workspace switching is disabled with `disable-scroll`.

Workspace colors are individually defined in CSS and must be preserved unless a visual redesign is explicitly requested.

## Modules

### sway/workspaces

- Persistent workspaces.
- Icon-only format.
- Explicit workspace-to-icon mappings.
- Mouse-wheel switching disabled.

### sway/window

- Maximum title length: 60 characters.
- Does not separate outputs.
- Empty text when no window title is available.

### tray

- Icon size: 20px.
- Spacing: 8px.

### clock

- 24-hour format (`HH:MM`).
- Full date displayed in the tooltip.

### sway/mode

Displays the current Sway mode.

## Appearance

The current CSS defines:

- Translucent black bar background.
- Individual colors for focused workspaces.
- Maple Mono NF for workspace icons, mode, and clock.
- Inter with Vazir Matn fallback for window titles.
- Existing tooltip styling and workspace transitions.

The current visual design is intentional. Do not replace colors or adjust typography and dimensions without discussing the changes first.

## Dependencies

- Waybar
- Sway
- Maple Mono NF
- Inter
- Nerd Font glyph support

Tray icons are supplied by applications and desktop applets, including NetworkManager and Blueman.

## Integration

Waybar is started through Sway's autostart configuration.

It is not managed by the Waybar systemd user service.

Waybar supports configuration reload through `SIGUSR2` using its default reload action:

    kill -SIGUSR2 "$(pgrep -x waybar)"

## Validation

Before deployment:

1. Validate `config.jsonc` with `jq empty`.
2. Compare source and live configuration files.
3. Reload Waybar using `SIGUSR2`.
4. Inspect Waybar logs for configuration errors.
5. Confirm the configured bar dimensions.
6. Verify workspace icons, colors, modules, and tray behavior.

Do not run `chezmoi apply` during project migration.
Deployment happens after all projects are complete.
