# Dotfiles

Personal Linux dotfiles managed with [chezmoi](https://www.chezmoi.io/).

The goal is to maintain a clean, modular, and consistent desktop environment with configurations that are easy to understand, maintain, and reproduce.

## Environment

- **OS:** Fedora Linux
- **Window Manager:** Sway
- **Shell:** Zsh
- **Terminal:** Ghostty
- **Editor:** Neovim
- **Theme:** Catppuccin

## Components

The repository includes configurations for:

- Sway
- Fuzzel
- Dunst
- Wallpaper automation
- Ghostty
- tmux
- Zsh
- Neovim
- Waybar
- keyd
- GTK
- aria2
- Other desktop utilities

## Repository Structure

```text
dotfiles/
├── AGENTS.md
├── README.md
├── TODO.md
├── PROJECT.md
├── .chezmoiignore
├── dot_config/
│   ├── sway/
│   ├── fuzzel/
│   ├── dunst/
│   └── ...
├── private_dot_local/
└── ...
```

Configuration files are managed by chezmoi, while documentation and project instructions remain in the repository.

## Usage

The `conf` shell alias provides a convenient shortcut for chezmoi.

```bash
conf status
conf diff
conf apply
conf update
```

## Documentation

- `AGENTS.md` — Repository-wide AI instructions.
- `TODO.md` — Project roadmap and pending work.
- `PROJECT.md` — Shared project context and architecture.
