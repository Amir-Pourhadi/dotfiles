# Zsh

## Overview
Modular Zsh configuration for Fedora 45 with Sway. Uses native Zsh configuration and standalone command-line tools rather than a shell framework.

## Structure

```text
~/.zshrc
~/.zprofile
~/.config/zsh/
├── 0_env.zsh
├── 1_tools.zsh
├── 2_history.zsh
└── 3_aliases.zsh
```

Chezmoi source:

```text
dot_zshrc
dot_zprofile
dot_config/zsh/
├── AGENTS.md
├── PROJECT.md
├── 0_env.zsh
├── 1_tools.zsh
├── 2_history.zsh
└── 3_aliases.zsh
```

## Startup
- `.zprofile` starts Sway from the first virtual terminal when no Wayland session is active.
- `.zshrc` sets `ZSH_CONFIG` and loads `*.zsh` modules in filename order.

## Modules

| Module | Responsibility |
|---|---|
| `0_env.zsh` | SSH agent, editor, PATH, colors, pager |
| `1_tools.zsh` | Shell options, vi mode, keybindings, completion, prompt, plugins |
| `2_history.zsh` | History storage, deduplication, sharing, safety |
| `3_aliases.zsh` | File navigation, dotfiles, shortcuts, downloads |

## Tools and Plugins
- Starship — prompt
- Zoxide — directory navigation
- FZF — fuzzy search and widgets
- fzf-tab — fuzzy completion
- zsh-autosuggestions — command suggestions
- zsh-syntax-highlighting — syntax highlighting
- eza — file listing
- bat — completion previews
- aria2 — download functions

## Key Behavior
- Vi editing mode is explicitly enabled.
- Up/down arrows search history using the current command prefix.
- `p` in vi command mode pastes from the Wayland clipboard.
- FZF provides history, file, and directory widgets.
- History is shared between active shell sessions.
- PATH entries are unique, with Volta and user-local directories taking priority.

## Dependencies
The configuration expects the listed tools to be installed separately. Optional integrations are guarded where practical so missing executables or plugin files do not prevent the rest of the shell from loading.

## Deployment
Managed by chezmoi. Deployment is deferred until all dotfiles projects are complete.
