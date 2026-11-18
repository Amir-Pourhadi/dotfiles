# Dunst — Project Context

Technical reference for the Dunst notification system on this machine.

## 1. Overview

Dunst is the notification daemon for the Fedora 45 Sway desktop.

- **Version:** 1.13.2
- **Configuration:** `~/.config/dunst/dunstrc`
- **Archive helper:** `~/.local/bin/dunst-archive`
- **Database:** `~/.local/share/dunst/notifications.db`
- **History interface:** Fuzzel

Dunst handles notification presentation, while a separate helper archives notifications for persistent history.

## 2. Configuration

The main configuration defines:

- Top-right notification placement.
- Inter font and Catppuccin-inspired colors.
- Notification sizing, spacing, borders, and progress bars.
- Icon presentation and lookup paths.
- Notification history settings.
- Fuzzel as the Dmenu interface.
- Mouse actions for notification interaction.
- A custom notification archive script.

Validate configuration changes by restarting Dunst and checking its service status and logs.

```bash
systemctl --user restart dunst
systemctl --user status dunst --no-pager
```

Check the running daemon after configuration changes.

## 3. Notification Archive

The archive helper is:

```text
~/.local/bin/dunst-archive
```

It is invoked through Dunst's `[notification_archive]` configuration section.

Implementation details:

- Written in Python 3.
- Uses Python's standard-library `sqlite3` module.
- Stores notifications in `~/.local/share/dunst/notifications.db`.
- Creates the database directory and table when needed.
- Uses a 10-second SQLite connection timeout.
- Retains up to 2,000 notifications.
- Excludes volume and brightness OSD notifications.
- Inserts notifications and prunes old records in one transaction.

The database is runtime data and must not be managed as a dotfiles configuration file.

## 4. Fuzzel Integration

Fuzzel provides the searchable notification-history interface.

The notification system is divided into three components:

| Component | Responsibility |
|---|---|
| Dunst | Notification presentation and archive invocation |
| `dunst-archive` | Store incoming notifications in SQLite |
| Fuzzel `notif` | Search, browse, and manage notification history |

Database operations are handled by the separate `notif-db` helper maintained with the Fuzzel project.

This separation keeps notification storage independent of the interactive history interface.

## 5. Related Components

- **Fuzzel:** Notification-history interface.
- **Sway:** Window and workspace integration.
- **`notify-send`:** Notification testing.
- **`dunstctl`:** Daemon control.
- **`xdg-open`:** Opening notification URLs.
- **`swaymsg`:** Window and workspace operations.
- **Python 3:** Archive database operations.

The actual installed commands and configuration take precedence over this overview.

## 6. Development Notes

- Preserve existing notification behavior unless a change is intentional.
- Keep notification presentation separate from persistent storage.
- Keep the archive helper independently executable.
- Use Python's standard library for SQLite operations.
- Avoid introducing unnecessary dependencies.
- Preserve the database when changing configuration or scripts.
- Verify Dunst configuration and archive behavior after meaningful changes.

## 7. Documentation

- Root `AGENTS.md`: Repository-wide instructions.
- Root `PROJECT.md`: Shared system and repository context.
- This file: Dunst-specific technical context.
- This directory's `AGENTS.md`: Dunst-specific development rules.
