# Project Context

Shared technical reference for the personal dotfiles repository.

This document describes the user's actual machine, configuration environment, repository architecture, and established preferences. It is not a generic Linux setup guide or fresh-installation guide.

## 1. System Environment

| Component        | Current Setup          |
| ---------------- | ---------------------- |
| Operating System | Fedora 45 Sway Edition |
| Window Manager   | Sway                   |
| Display Server   | Wayland                |
| Shell            | Zsh                    |
| Terminal         | Ghostty                |
| Editor           | Neovim                 |
| Package Manager  | DNF                    |
| Dotfiles Manager | chezmoi                |
| Version Control  | Git                    |
| Main Theme       | Catppuccin             |

### Hardware

- **Integrated GPU:** Intel HD Graphics 4600 (Haswell, i915).
- **Dedicated GPU:** NVIDIA GeForce GTX 950M.
- **NVIDIA Driver:** 580xx series.
- **Display:** eDP-1, 1920×1080 at approximately 60 Hz.

### Desktop Environment

The desktop is built around Sway and Wayland, with a minimal collection of utilities.

Main applications and tools include:

- Sway, Swaylock, Swayidle and Swaybg
- Fuzzel
- Dunst
- Waybar
- keyd
- Ghostty
- tmux
- Neovim
- Zsh
- awww
- Wallpaper automation (Wallhaven scripts and systemd user units)
- NetworkManager applet
- Blueman
- cliphist
- wl-clipboard
- grim and slurp
- GTK

The actual installed configuration and dependencies take precedence over this overview.

## 2. Repository Architecture

The repository is the source of truth for configurations managed through chezmoi.

### Directory Structure

```text
dotfiles/
├── .chezmoiignore
├── AGENTS.md
├── README.md
├── TODO.md
├── PROJECT.md
│
├── dot_config/
│   ├── sway/
│   ├── fuzzel/
│   ├── dunst/
│   ├── systemd/
│   ├── nvim/
│   ├── ghostty/
│   ├── tmux/
│   ├── waybar/
│   ├── keyd/
│   └── ...
│
└── ...
```

This is the intended architecture, not a claim that every directory already exists.

Wallpaper automation is managed through:

- `dot_config/systemd/user/` — Wallpaper service and timer.
- `private_dot_local/bin/` — Wallpaper update and related utility scripts.

Updates run only when the configured local proxy is reachable; otherwise, systemd skips the service execution.

### Configuration Organization

- Keep each application's configuration together.
- Prefer modular configurations over monolithic files.
- Keep project-specific documentation beside its configuration.
- Add nested `AGENTS.md` files only when a project requires additional instructions.
- Avoid unnecessary directory nesting and duplicate documentation.

For example:

```text
dot_config/
└── sway/
    ├── AGENTS.md
    ├── PROJECT.md
    ├── config
    └── config.d/
```

## 3. Chezmoi Configuration

### Current Setup

- **Source directory:** `~/dotfiles`
- **Target directory:** `$HOME`
- **Configuration file:** `~/.config/chezmoi/chezmoi.toml`
- **State database:** `~/.config/chezmoi/chezmoistate.boltdb`
- **Shell alias:** `conf` → `chezmoi`

The source directory is explicitly configured in `chezmoi.toml`.

### Documentation Exclusion

The root `.chezmoiignore` excludes:

- Markdown files recursively.

Repository documentation remains available to Git and AI agents but is not deployed into the home directory by chezmoi.

### Workflow

Prefer reviewing changes before applying them.

Common commands:

```bash
conf status
conf diff
conf add <file>
conf edit <file>
conf apply
conf update
```

Do not run `conf apply` blindly.

Inspect source and target differences before applying configuration changes.

## 4. Configuration Philosophy

- Prefer simple, maintainable solutions.
- Avoid unnecessary dependencies.
- Prefer native application features and standard tools.
- Keep configurations modular and readable.
- Preserve existing behavior unless a change is intentional.
- Avoid overengineering and unnecessary abstractions.
- Use consistent conventions across related applications.
- Verify configuration changes before considering them complete.

## 5. Visual Identity

### Theme

Catppuccin is the current theme direction.

Visual preferences:

- Minimal and OLED-friendly interfaces.
- Pure black backgrounds where appropriate.
- Consistent appearance across desktop applications.
- Avoid excessive decoration and visual clutter.

### Fonts

| Purpose | Font  |
| ------- | ----- |
| UI      | Inter |
| Coding  | Maple |

Avoid fonts previously found unsuitable, such as JetBrains Mono and excessively thin or short-looking alternatives.

### GTK Appearance

| Setting      | Choice                                  |
| ------------ | --------------------------------------- |
| GTK theme    | Catppuccin Mocha Mauve Standard+Default |
| GTK font     | Inter 11                                |
| Cursor theme | Bibata Modern Ice                       |
| Icon theme   | Papirus-Dark                            |

GTK3 and GTK4 settings are managed through chezmoi. GTK4 theme CSS and assets remain symlinks to the locally installed Catppuccin theme.

## 6. Formatting Conventions

### General Configuration

Use this separator style in Sway and chezmoi configuration files:

```text
-------------
```

Keep section names descriptive and formatting consistent.

### Neovim

Use this section header format:

```lua
-- ---------------- [Nerd Font icon]  Title Case ----------------
```

Conventions:

- Use Nerd Font icons, not emoji.
- Keep two spaces between the icon and title.
- Avoid multiline decorative banners.
- Comments should explain meaningful details.

## 7. Git Workflow

- Main development branch: `main`.
- Use meaningful Conventional Commit messages.
- Git commits and tags are configured for GPG signing.
- Review changes before committing.
- Keep commits focused on a logical change.
- Verify signatures when auditing Git history.

Example commit messages:

```text
docs: add project documentation
chore(chezmoi): update source configuration
feat(sway): add window management rules
fix(waybar): correct module formatting
refactor(nvim): simplify plugin configuration
```

## 8. Documentation Hierarchy

Documentation is organized by scope.

| File                              | Responsibility                              |
| --------------------------------- | ------------------------------------------- |
| Root `AGENTS.md`                  | Repository-wide AI instructions             |
| Root `README.md`                  | Human-facing repository overview            |
| Root `TODO.md`                    | Project roadmap                             |
| `PROJECT.md`                      | Shared technical context                    |
| `dot_config/<project>/PROJECT.md` | Project-specific technical knowledge        |
| `dot_config/<project>/AGENTS.md`  | Additional project-specific AI instructions |

Root instructions apply throughout the repository.

Nested instructions should only be introduced when a project genuinely needs special rules.

Project documentation should contain details relevant to that project rather than duplicating shared information.

## 9. Working Principles for AI Agents

Before modifying configurations:

1. Read the root `AGENTS.md`.
2. Read this document.
3. Inspect the actual configuration files.
4. Read relevant project documentation and nested instructions.
5. Gather diagnostic evidence before proposing changes.
6. Explain the intended change before applying it.
7. Verify the result.
8. Update documentation when established decisions or architecture change.

The actual repository and machine state always take precedence over historical descriptions.

Do not assume a configuration exists simply because it appears in the planned repository structure.
