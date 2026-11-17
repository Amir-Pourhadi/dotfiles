# Neovim Configuration

## Overview

A custom Neovim configuration built from scratch and managed through chezmoi.

The configuration prioritizes:

- Fast startup and intentional plugin loading.
- Native Neovim functionality where practical.
- Modular, maintainable Lua configuration.
- React and TypeScript development.
- A consistent Catppuccin-based desktop theme.

## Architecture

### Entry Point

- `init.lua`: Main configuration entry point.
- `lua/config/lazy.lua`: lazy.nvim bootstrap and plugin imports.
- `lazy-lock.json`: Locked plugin revisions.

### Core

- `lua/core/init.lua`: Core configuration initialization.
- `lua/core/options.lua`: Neovim options.
- `lua/core/keymaps.lua`: Global keybindings.
- `lua/utils/map.lua`: Keymap utility functions.

### Plugin Organization

Plugin specifications are organized by responsibility and imported explicitly through lazy.nvim.

| Directory   | Responsibility                                              |
| ----------- | ----------------------------------------------------------- |
| `coding/`   | Formatting and TODO comments                                |
| `editor/`   | Autopairs, commenting, surrounding, Treesitter              |
| `git/`      | Git signs and integration                                   |
| `lsp/`      | Completion, LSP, Mason, language tooling                    |
| `snacks/`   | Modular Snacks.nvim feature configuration                   |
| `ui/`       | Colorscheme, hints, statusline, Snacks plugin specification |
| `workflow/` | tmux integration                                            |

### Plugin Loading

Plugin imports are explicitly defined in `lua/config/lazy.lua`:

- `plugins.coding`
- `plugins.editor`
- `plugins.git`
- `plugins.lsp`
- `plugins.ui`
- `plugins.workflow`

Plugin specifications are lazy-loaded by default unless explicitly configured otherwise.

### Plugin Inventory

| Category       | Plugins                                                                    |
| -------------- | -------------------------------------------------------------------------- |
| Plugin manager | lazy.nvim                                                                  |
| Completion     | blink.cmp, LuaSnip, friendly-snippets                                      |
| LSP            | nvim-lspconfig, Mason, mason-tool-installer, lazydev.nvim                  |
| Formatting     | conform.nvim                                                               |
| Syntax         | nvim-treesitter                                                            |
| Editing        | nvim-autopairs, Comment.nvim, nvim-surround, nvim-ts-context-commentstring |
| Git            | gitsigns.nvim                                                              |
| UI             | snacks.nvim, Catppuccin, lualine.nvim, which-key.nvim, nvim-web-devicons   |
| Utilities      | todo-comments.nvim, plenary.nvim                                           |
| Integration    | vim-tmux-navigator                                                         |

Plugin loading should remain intentional. Avoid adding dependencies when native Neovim functionality is sufficient.

## Language Tooling

### Configured LSP Servers

The following servers are configured through Neovim's native LSP API:

| Language / Tool         | Server    |
| ----------------------- | --------- |
| TypeScript / JavaScript | `ts_ls`   |
| ESLint                  | `eslint`  |
| Python                  | `pyright` |
| HTML                    | `html`    |
| CSS                     | `cssls`   |
| JSON                    | `jsonls`  |
| YAML                    | `yamlls`  |
| Lua                     | `lua_ls`  |

Configuration uses `vim.lsp.config()` and `vim.lsp.enable()`.

Blink.cmp provides LSP completion capabilities.

### Mason Tools

Mason and mason-tool-installer manage external development tools.

Tools declared in `ensure_installed`:

**Language servers**

- `typescript-language-server`
- `eslint-lsp`
- `html-lsp`
- `css-lsp`
- `json-lsp`
- `yaml-language-server`
- `lua-language-server`

**Formatters**

- `stylua`
- `prettier`
- `isort`
- `black`

The installer runs on startup with a configured delay. Automatic updates are disabled.

### Formatting

Formatting is managed through conform.nvim.

| Filetype   | Formatter        |
| ---------- | ---------------- |
| Lua        | `stylua`         |
| JavaScript | `prettier`       |
| TypeScript | `prettier`       |
| JSX        | `prettier`       |
| TSX        | `prettier`       |
| HTML       | `prettier`       |
| CSS        | `prettier`       |
| JSON       | `prettier`       |
| YAML       | `prettier`       |
| Markdown   | `prettier`       |
| Svelte     | `prettier`       |
| GraphQL    | `prettier`       |
| Liquid     | `prettier`       |
| Python     | `isort`, `black` |

### Treesitter

- Plugin: `nvim-treesitter`
- Branch: `main`
- Build command: `:TSUpdate`
- Uses the current Neovim Treesitter API.

Highlighting is enabled for:

- Lua
- JavaScript
- JSX
- TypeScript
- TSX
- HTML
- CSS
- Python

Treesitter is also used by editor integrations such as context-aware commenting.

Parser installation is maintained separately from the filetype configuration.

## Snacks.nvim

Snacks.nvim is configured through a dedicated plugin specification:

`lua/plugins/ui/snacks.lua`

Its configuration is separated into modules under `lua/plugins/snacks/`.

| Module            | Responsibility                                         |
| ----------------- | ------------------------------------------------------ |
| `init.lua`        | Aggregates Snacks options                              |
| `performance.lua` | Bigfile, quickfile, Zen                                |
| `editor.lua`      | Notifier, input, indent, scope, words, rename, scratch |
| `dashboard.lua`   | Dashboard                                              |
| `picker.lua`      | Picker                                                 |
| `explorer.lua`    | File explorer                                          |
| `terminal.lua`    | Floating terminal                                      |
| `git.lua`         | Lazygit and Git browsing                               |
| `keymaps.lua`     | Plugin keybindings                                     |

Keep Snacks configuration modular and avoid moving unrelated functionality into its configuration.

## UI and Theme

- **Colorscheme:** Catppuccin
- **Statusline:** lualine.nvim
- **Main UI utilities:** snacks.nvim
- **Keybinding hints:** which-key.nvim
- **Icons:** nvim-web-devicons
- **UI font preference:** Inter
- **Coding font preference:** Maple

Visual direction:

- Dark and minimal interfaces.
- OLED-friendly styling.
- Consistent visual language across desktop applications.
- Avoid excessive decoration and visual clutter.

The broader desktop theme aims for consistency across Ghostty, tmux, Neovim, Zsh, and Fuzzel.

## Workflow

- tmux is the primary terminal multiplexer.
- vim-tmux-navigator provides navigation between Neovim and tmux panes.
- Snacks terminal is intended for occasional commands, not as a replacement for tmux.
- lazy.nvim manages plugin installation and loading.
- Mason manages external language servers and development tools.

## Maintenance Guidelines

- Keep plugin specifications modular and grouped by responsibility.
- Keep plugin imports explicit.
- Update `lazy-lock.json` when plugin revisions change intentionally.
- Preserve lazy-loading where appropriate.
- Prefer native Neovim functionality over additional plugins.
- Keep language tooling aligned with actual development needs.
- Avoid unnecessary abstractions and dependencies.
- Update this document when architecture, plugin inventory, or language tooling changes.
- Keep detailed keybinding documentation separate if the keymap collection grows enough to justify it.

## Validation

Before considering a configuration change complete:

1. Run `:checkhealth` for relevant components.
2. Check startup time and plugin loading when performance-related changes are made.
3. Test affected keybindings and editing behavior.
4. Verify LSP attachment, completion, and formatting for affected languages.
5. Verify Treesitter parser and query functionality when syntax-related changes are made.
6. Review the corresponding configuration and documentation changes.
7. Verify chezmoi source and target consistency before deployment.
