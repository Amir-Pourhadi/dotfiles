# keyd

## Overview

System-wide keyboard remapping managed by keyd on Fedora.

## Configuration

- `default.conf`: Main keyd configuration.
- `/etc/keyd/default.conf`: Symlink to `~/.config/keyd/default.conf`.

The configuration uses `[ids] *` to apply mappings to recognized keyboards, including the built-in keyboard and external keyboards connected through different interfaces.

## Current mappings

| Key | Behavior |
|---|---|
| Caps Lock | Tap: Escape; hold: Control |
| F + J | Alt + Space |

The Caps Lock mapping uses `overloadt(control, esc, 175)`.
The global `overload_tap_timeout` is 250 ms.

## Service integration

- Service: `keyd.service`
- Service manager: systemd
- Service scope: system-wide
- Toggle script: `~/.local/bin/toggle-keyd`
- Toggle script source: `private_dot_local/bin/executable_toggle-keyd`

The toggle script starts or stops the service through sudo and sends a desktop notification.

## Validation and troubleshooting

Validate the configuration:

```bash
sudo keyd check
```

Reload after a configuration change:

```bash
sudo keyd reload
```

Inspect keyboard events:

```bash
sudo keyd monitor
```

Inspect service logs:

```bash
journalctl -u keyd -b --no-pager
```

Emergency panic sequence:

`Backspace + Escape + Enter`

## Maintenance

- Preserve wildcard keyboard matching unless there is a specific reason to restrict devices.
- Keep the `/etc/keyd/default.conf` symlink pointing to the live configuration.
- Validate configuration before reloading the daemon.
- Preserve existing mappings unless changes are explicitly requested.
