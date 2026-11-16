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

## Documentation Hierarchy

Documentation is organized by scope:

- `README.md`: Human-facing repository overview.
- `TODO.md`: Project roadmap and pending work.
- `docs/PROJECT.md`: Shared technical context and architecture.
- `dot_config/<project>/PROJECT.md`: Project-specific knowledge.
- `dot_config/<project>/AGENTS.md`: Additional project-specific instructions when needed.

Before substantial configuration changes:

1. Read `docs/PROJECT.md` for shared context.
2. Read the relevant project's `PROJECT.md`, if present.
3. Follow any applicable nested `AGENTS.md` instructions.

Avoid duplicating shared information in project-specific documentation.

## Workflow

Before changing a configuration:

1. Inspect the existing file and related modules.
2. Identify dependencies.
3. Gather diagnostic evidence when needed.
4. Explain meaningful architectural or behavioral changes before implementing them.
5. Preserve established conventions.
6. Prefer complete, maintainable solutions.
7. Verify the resulting configuration when appropriate.

For diagnostic commands, provide copy-pasteable commands and make output easy to share.

Prefer `2>&1 | tee >(wl-copy)` for diagnostic output when appropriate.

Update documentation alongside meaningful configuration changes.

Before each meaningful commit, review repository-wide documentation
(`README.md`, `TODO.md`, and `docs/PROJECT.md`) and relevant project
documentation for updates required by the changes.

## Source of Truth

The actual current repository files take precedence over historical descriptions.

Do not recreate configurations from memory when the current files can be inspected.
