# Neovim — Agent Instructions

## Principles

- Keep the configuration minimal, modular, and maintainable.
- Prefer native Neovim functionality over additional plugins.
- Preserve existing behavior unless a change is intentional.
- Avoid unnecessary abstractions, dependencies, and configuration.
- Prioritize React and TypeScript workflows.

## Conventions

- Use 2-space indentation.
- Use clear, descriptive names.
- Add comments only when they clarify non-obvious behavior.
- Group related plugin specifications by responsibility.
- Keep plugin loading intentional and preserve lazy-loading.

Section headers must follow:

`-- ---------------- [Nerd Font icon]  Title Case ----------------`

- Use Nerd Font icons, never emoji.
- Use exactly two spaces after the icon.
- Do not use multiline decorative banners.

## Constraints

- Do not introduce a Neovim distribution.
- Do not add plugins without a clear need.
- Do not assume language tooling is installed or configured.
- Keep Catppuccin as the selected colorscheme.
- Keep tmux as the primary terminal multiplexer.

## Workflow

1. Inspect relevant files and dependencies before editing.
2. Make the smallest coherent change.
3. Preserve existing functionality.
4. Validate affected behavior.
5. Update `PROJECT.md` when architecture, plugins, or tooling change.

## Documentation

Refer to `PROJECT.md` for the configuration architecture, plugin inventory, language tooling, and validation guidelines.
