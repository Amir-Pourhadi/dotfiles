# Fuzzel — Project Context

Technical reference for the Fuzzel launcher configuration on this system.

## 1. Overview

Fuzzel is the primary application launcher and command interface for the Fedora 45 Sway desktop.

- **Version:** 1.15.0
- **Configuration:** `~/.config/fuzzel/fuzzel.ini`
- **Scripts:** `~/.config/fuzzel/scripts/`
- **Terminal:** Ghostty
- **Font:** Inter, 13px
- **Theme:** Catppuccin-inspired

Fuzzel replaces Walker as the primary launcher.

## 2. Configuration

The main configuration defines:

- Top-anchored launcher with a 150px vertical margin.
- FZF matching mode and match counter.
- Ten visible entries.
- Ghostty as the terminal.
- Overlay layer.
- Catppuccin-inspired colors.
- Custom keyboard bindings for navigation and script actions.

Validate configuration changes with:

```bash
fuzzel --check-config
```

## 3. Launcher Scripts

All launcher entry points are located in `scripts/`.

| Script | Responsibility |
|---|---|
| `calc` | Evaluate expressions with Qalculate and keep a temporary result history. |
| `clip` | Browse, copy, and delete clipboard history through cliphist. |
| `emoji` | Search Unicode emoji and custom symbols, then insert selections. |
| `files` | Search files under `$HOME`, open them, reveal their folders, or copy paths. |
| `google` | Search Google using an encoded query. |
| `notif` | Browse and manage archived Dunst notifications. |
| `power` | Suspend, reboot, or shut down with confirmation where appropriate. |
| `windows` | Search open Sway windows and focus the selected window. |

Additional data:

- `symbols.txt`: Custom symbols available in the emoji picker.

## 4. Sway Integration

Fuzzel is integrated into the Sway Run mode.

The launcher scripts are referenced through:

```ini
set $fz ~/.config/fuzzel/scripts
```

Current Run-mode shortcuts:

| Key | Action |
|---|---|
| `c` | Calculator |
| `f` | Files |
| `g` | Google search |
| `v` | Clipboard history |
| `w` | Window switching |
| `e` | Emoji picker |
| `p` | Power menu |
| `n` | Notification history |

The main launcher is available through `$mod+space`.

The actual Sway configuration is maintained separately in the Sway project.

## 5. Dependencies

Commands used by the launcher scripts:

| Command | Used by |
|---|---|
| `fuzzel` | All interactive launcher menus |
| `qalc` | Calculator |
| `cliphist` | Clipboard history |
| `wl-copy` | Clipboard operations |
| `wtype` | Emoji insertion |
| `fd` | File search |
| `thunar` | File manager integration |
| `jq` | JSON processing |
| `swaymsg` | Window switching |
| `notify-send` | User feedback |
| `xdg-open` | Opening URLs and files |
| `systemctl` | Power actions |
| `ghostty` | Terminal integration |
| `setsid` | Detached application launching |

Other utilities used include Bash, Python 3, `awk`, and `sed`.

Verify command availability before assuming a dependency is installed.

## 6. Notification History

The notification history feature connects Fuzzel with Dunst.

Its architecture has three parts:

- **Dunst archive:** `~/.local/bin/dunst-archive` captures incoming notifications.
- **SQLite database:** `~/.local/share/dunst/notifications.db` stores archived notifications.
- **Fuzzel interface:** `scripts/notif` provides searchable notification history and actions.

Database operations are handled by:

```text
~/.local/bin/notif-db
```

The helper supports listing, deleting individual records, and clearing the archive.

The archive is limited to 2,000 records. Volume and brightness OSD notifications are excluded.

The notification database helper is managed separately from the Fuzzel configuration.

## 7. Development Notes

- Launcher scripts are independently executable.
- Bash is the entry point for launcher interactions.
- Python's standard library handles SQLite operations.
- The SQLite command-line utility is not installed.
- Fuzzel's `--dmenu` interface is used for interactive selections.
- Custom keybindings use Fuzzel's exit codes for alternate actions.

Preserve existing behavior unless a change is intentional.

## 8. Documentation

- Root `AGENTS.md`: Repository-wide instructions.
- Root `docs/PROJECT.md`: Shared system and repository context.
- This file: Fuzzel-specific technical context.
- This directory's `AGENTS.md`: Fuzzel-specific development rules.
