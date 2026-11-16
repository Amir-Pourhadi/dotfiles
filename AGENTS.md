# Dotfiles — Agent Instructions

## Purpose

This repository manages the user's personal Linux desktop configuration.

The primary environment is Fedora 45 with Sway.

The goal is a unified, minimal, maintainable configuration across terminal, editor, launcher, window manager, and desktop utilities.

## Main Components

- Sway
- Fuzzel
- Dunst
- Ghostty
- tmux
- Zsh
- Neovim
- Waybar
- awww
- Other desktop utilities

## Configuration Philosophy

- Prefer modular configuration over monolithic files.
- Avoid unnecessary dependencies.
- Prefer native features and standard tools.
- Preserve existing behavior unless explicitly changing it.
- Avoid overengineering.
- Keep configuration readable and maintainable.
- Make changes consistent with the existing repository structure.

## Visual Preferences

- Catppuccin is the current theme direction.
- Prefer a minimal, OLED-friendly appearance.
- Pure black backgrounds are preferred where appropriate.
- Inter is the preferred UI font.
- Maple is a preferred coding font.
- Avoid excessive decorative elements.

## Formatting Conventions

Use these separators in Sway and chezmoi configuration:

`-------------`

Neovim configuration sections should use:

`-- ---------------- [Nerd Font icon]  Title Case ----------------`

Neovim comments should clarify something meaningful.

Do not use emoji icons in Neovim configuration.

Do not use multiline decorative banners.

## Workflow

Before changing a configuration:

1. Inspect the existing file and related modules.
2. Identify dependencies.
3. Preserve established conventions.
4. Prefer complete, maintainable solutions.
5. Verify the resulting configuration.

For diagnostic commands, provide copy-pasteable commands and make output easy to share.

Prefer `wl-copy` piping for diagnostic output when appropriate.

## Source of Truth

The actual current repository files take precedence over historical descriptions.

Do not recreate configurations from memory when the current files can be inspected.

Update documentation alongside meaningful configuration changes.
