# Sway Project

## Overview

Modular Sway configuration for Fedora 45. The setup uses keyboard-driven workflows, Fuzzel for launching applications and scripts, Dunst for notifications, and Catppuccin Mocha for visual consistency.

## Configuration Structure

```text
sway/
├── AGENTS.md
├── PROJECT.md
├── config
└── config.d/
    ├── 00-vars.conf
    ├── 01-catppuccin-vars.conf
    ├── 10-input.conf
    ├── 20-output.conf
    ├── 30-systemd-env.conf
    ├── 31-autostart.conf
    ├── 40-workspaces.conf
    ├── 50-rules.conf
    ├── 60-bindings.conf
    ├── 61-bindings-volume.conf
    ├── 62-bindings-brightness.conf
    ├── 63-bindings-media.conf
    ├── 64-bindings-screenshot.conf
    ├── 70-modes.conf
    └── 80-appearance.conf
```

The main `config` includes every `.conf` file in `config.d/`.

### Module Responsibilities

| Module | Responsibility |
|---|---|
| `00-vars` | Shared variables and application commands |
| `01-catppuccin-vars` | Catppuccin color definitions |
| `10-input` | Keyboard layout and input settings |
| `20-output` | Display and cursor settings |
| `30-systemd-env` | Import session environment into systemd and D-Bus |
| `31-autostart` | Desktop startup commands |
| `40-workspaces` | Workspace names and assignments |
| `50-rules` | Application and window rules |
| `60-bindings` | Core keyboard shortcuts |
| `61-bindings-volume` | Audio controls |
| `62-bindings-brightness` | Display brightness controls |
| `63-bindings-media` | Media playback controls |
| `64-bindings-screenshot` | Screenshot shortcuts |
| `70-modes` | Custom keyboard modes |
| `80-appearance` | Gaps, fonts, borders, and window appearance |

## Workspaces

Nine workspaces are configured:

1. Web
2. Terminal
3. Code
4. Files
5. Chat
6. Media
7. Games
8. Tools
9. Scratch

Application assignments are maintained in `50-rules.conf`.

## Keyboard Workflow

The configuration uses `$mod` as its primary modifier and Vim-style `h/j/k/l` navigation.

Custom modes are defined in `70-modes.conf`, including:

- Go
- Open
- Move
- Window
- Utils
- Run

The Run mode integrates with Fuzzel and its scripts.

## Startup and Desktop Integration

`31-autostart.conf` handles desktop startup, including:

- Waybar
- NetworkManager applet
- Blueman applet
- `sway-session.target`
- Dunst
- PS4 controller service
- swaybg
- awww daemon
- Dark color-scheme preference
- Clipboard history collection

The PolicyKit agent is not explicitly started by this configuration.

Systemd wallpaper units and wallpaper utility scripts are managed separately from the Sway configuration.

## External Dependencies

The configuration relies on:

- Sway
- Fuzzel
- Dunst
- Waybar
- Ghostty
- Thunar
- NetworkManager applet
- Blueman
- swaybg
- awww
- wl-clipboard
- cliphist
- playerctl
- pactl
- brightnessctl
- grimshot
- notify-send
- systemd user services

Some commands are provided by Fedora packages or other desktop components. Verify actual package ownership before changing dependencies.

## Validation

Validate the complete configuration with:

```bash
sway -C -c ~/.config/sway/config
```

Review startup behavior and relevant systemd services after intentional changes.

Do not deploy changes automatically through chezmoi.
