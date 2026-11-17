# Zsh Configuration Instructions

## Scope
- This directory contains the modular Zsh configuration deployed to `~/.config/zsh`.
- Root `dot_zshrc` and `dot_zprofile` are the shell entry points.
- Keep configuration modular and load modules in filename order.

## Conventions
- Use Zsh-native syntax.
- Quote paths and variable expansions where appropriate.
- Preserve existing keybindings, aliases, environment behavior, and startup behavior unless explicitly agreed.
- Keep vi editing mode and its clipboard binding intact.
- Keep startup lightweight; avoid frameworks and unnecessary dependencies.
- Load syntax highlighting after other ZLE plugins.
- Add comments only when they clarify intent or non-obvious behavior.

## Validation
- Run `zsh -n` against every configuration file.
- Test fresh interactive startup.
- Verify vi keymaps, completion, history, plugins, aliases, and environment variables.
- Do not run `chezmoi apply` until final global deployment.

## Workflow
- Inspect actual shell behavior before changing configuration.
- Keep changes scoped to this project.
- Review root and project documentation before committing.
- Never stage or commit without explicit approval.
