# tmux

## Overview

A minimal tmux configuration integrated with Ghostty, Zsh, and Catppuccin Mocha.

Priorities:

- Predictable keyboard-driven navigation.
- Manually controlled window names.
- Automatic icons based on window names.
- A minimal directory-focused status bar.
- Minimal plugin dependencies.

## Architecture

- `tmux.conf`: Main configuration and plugin setup.
- `scripts/directory.sh`: Git-aware directory display.
- `scripts/window-icon.sh`: Window-name-to-icon lookup.
- `scripts/icons.conf`: Window icon mappings.

The `executable_` chezmoi source prefixes preserve executable permissions.

TPM-managed plugins are runtime dependencies and are not tracked in this repository.

## Plugins

- TPM: Plugin management.
- tmux-sensible: Sensible defaults.
- Catppuccin/tmux: Mocha theme and status modules.

No automatic session management plugin is used.

### Initialization Order

1. Declare plugins and Catppuccin options.
2. Source the Catppuccin theme.
3. Configure status modules and appearance.
4. Start TPM after all configuration is complete.

## Keybindings

Prefix: `M-Space`

| Binding                 | Action               |
| ----------------------- | -------------------- |
| `Prefix + h/j/k/l`      | Navigate panes       |
| `Alt + Arrow`           | Resize panes         |
| `Prefix + vertical bar` | Horizontal split     |
| `Prefix + -`            | Vertical split       |
| `Prefix + z`            | Toggle pane zoom     |
| `Prefix + x`            | Kill pane            |
| `Prefix + r`            | Reload configuration |
| `Prefix + ,`            | Rename window        |

Splits inherit the current pane's working directory.

## Window Management

Window names are manually controlled.

- Automatic renaming is disabled.
- Application-driven renaming is disabled.
- Catppuccin displays an icon based on the exact window name.
- Unknown names use a fallback icon.

## Status Bar

- Catppuccin Mocha.
- Rounded window indicators.
- Transparent status background.
- Directory module on the right.
- Empty left side.

The directory display prefers the Git repository root and otherwise displays paths relative to HOME.

## Dependencies

- tmux
- Bash
- Git
- TPM
- Catppuccin/tmux
- tmux-sensible
- Nerd Font glyph support

## Validation

Before deployment:

1. Validate the configuration with an isolated tmux server.
2. Check shell syntax.
3. Test icon matching and fallback behavior.
4. Test directory display inside and outside Git repositories.
5. Inspect the chezmoi diff.
6. Compare the final configuration with the live setup.

Do not deploy during project migration.
