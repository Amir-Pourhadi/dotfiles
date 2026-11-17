# Ghostty — Agent Instructions

## Principles

- Keep the configuration minimal and readable.
- Prefer Ghostty's native functionality.
- Preserve existing terminal behavior unless explicitly changing it.
- Avoid unnecessary scripts, includes, and duplicated resources.
- Keep tmux as the default session manager.

## Constraints

- Preserve the `Fedora` tmux session startup command.
- Keep Catppuccin Mocha.
- Keep Maple Mono NF at 16.85 points.
- Preserve the black background and 0.88 opacity.
- Do not copy bundled Ghostty themes or shell-integration resources.
- Do not introduce unnecessary shell integration overrides.

## Workflow

1. Inspect the current configuration and Ghostty version.
2. Review relevant tmux and Sway integration.
3. Make the smallest coherent changes.
4. Validate with `ghostty +validate-config`.
5. Review the effective configuration.
6. Update `PROJECT.md` when architecture or established behavior changes.

## Formatting

- Use single-line section headers with decorative Unicode separators.
- Use a relevant Nerd Font icon or emoji for each section.
- Keep section titles aligned consistently.
- Group settings by responsibility.
- Keep comments concise and avoid unnecessary explanations.
