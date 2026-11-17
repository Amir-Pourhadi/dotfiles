# Ghostty — Project Context

Technical reference for the Ghostty terminal configuration on this system.

## 1. Overview

Ghostty is the primary terminal emulator for the Fedora 45 Sway desktop.

- **Version:** 1.3.1
- **Configuration:** `~/.config/ghostty/config.ghostty`
- **Shell:** Zsh
- **Multiplexer:** tmux
- **Theme:** Catppuccin Mocha
- **Font:** Maple Mono NF

## 2. Configuration

The configuration defines:

- tmux as the default startup command.
- A shared tmux session named `Fedora`.
- Borderless windows without GTK titlebars.
- Catppuccin Mocha with a pure-black background.
- 88% background opacity.
- Maple Mono NF at 16.85 points.
- Balanced window padding.
- Disabled window-state persistence.

Keep the configuration in one file. Avoid unnecessary includes, scripts, and duplicated theme files.

## 3. Shell and tmux Integration

Ghostty launches:

```bash
tmux new-session -A -s Fedora
```

This attaches to the existing `Fedora` session or creates it when necessary.

Ghostty's automatic shell integration is enabled and verified through the tmux environment.

Relevant integration features include cursor, path, and title reporting.

tmux is configured separately in the tmux project.

## 4. Appearance

- Catppuccin Mocha provides the terminal theme.
- The background is explicitly pure black.
- Background opacity is set to 0.88.
- Cell opacity remains disabled to preserve application-rendered backgrounds.
- No blur compositor is configured in the Sway environment.

Keep appearance consistent with the broader desktop configuration.

## 5. Dependencies

| Component        | Purpose                       |
| ---------------- | ----------------------------- |
| Ghostty          | Terminal emulator             |
| tmux             | Session and window management |
| Zsh              | Interactive shell             |
| Maple Mono NF    | Terminal font                 |
| Catppuccin Mocha | Terminal theme                |

Ghostty's bundled themes and shell-integration files are application resources and should not be copied into this repository.

## 6. Validation

Validate configuration changes with:

```bash
ghostty +validate-config
ghostty +show-config
```

Review deployment changes with:

```bash
chezmoi diff ~/.config/ghostty/config.ghostty
```

Do not apply changes blindly. Verify the effective configuration and actual terminal behavior after deployment.

## 7. Development Notes

- Preserve the Fedora tmux session startup behavior.
- Keep the configuration minimal.
- Avoid redundant default settings.
- Do not duplicate Ghostty's bundled resources.
- Preserve shell integration.
- Keep tmux configuration separate.

## 8. Documentation

- Root `AGENTS.md`: Repository-wide instructions.
- Root `docs/PROJECT.md`: Shared system and repository context.
- This file: Ghostty-specific technical context.
- This directory's `AGENTS.md`: Ghostty-specific development rules.
