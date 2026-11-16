# Sway — Agent Instructions

## Purpose

Maintain a minimal, modular, keyboard-driven Sway desktop configuration for Fedora.

Priorities:
- Keep configuration simple and maintainable.
- Prefer native Sway functionality over additional tools.
- Preserve existing behavior unless a change is intentional.
- Avoid unnecessary dependencies and duplicated configuration.

## Current Environment

- OS: Fedora 45 Sway Edition
- Window manager: Sway 1.12
- Shell: Zsh
- Terminal: Ghostty
- Launcher: Fuzzel
- Notification daemon: Dunst
- Status bar: Waybar
- Wallpaper manager: awww
- Font: Inter
- Theme: Catppuccin Mocha
- GPU: Intel HD 4600 + NVIDIA GeForce GTX 950M

## Configuration Architecture

The main configuration is:

`~/.config/sway/config`

It includes modular files from:

`~/.config/sway/config.d/*.conf`

Keep configuration organized by responsibility. Use the existing numbered naming convention when adding modules.

## Desktop Components

- Fuzzel: application launcher and custom scripts.
- Dunst: notifications and notification archive.
- Waybar: status bar.
- Ghostty: terminal.
- awww: wallpaper rendering.
- NetworkManager applet: network tray integration.
- Blueman: Bluetooth tray integration.
- cliphist: clipboard history.

Do not reintroduce previously removed components such as Walker, Mako, or EasyEffects without an explicit decision.

## Styling

- Use Catppuccin Mocha consistently.
- Keep the existing Inter typography.
- Follow the separator convention: `-------------`.
- Keep visual changes consistent across desktop components.

## System Constraints

- Sway is the desktop environment; do not introduce GNOME or KDE desktop dependencies.
- Do not remove KDE Frameworks dependencies blindly.
- Keep NVIDIA/CUDA packages and Gamescope.
- Battery telemetry is unreliable; do not add a battery module without revisiting that constraint.

## Safety and Validation

Before changing configuration:
1. Inspect the relevant files and dependencies.
2. Understand the existing behavior.
3. Prefer the smallest coherent change.
4. Validate the Sway configuration with `sway -C`.
5. Review the resulting diff before deployment.

Do not run `chezmoi apply` without explicit approval.

## Documentation

Keep `PROJECT.md` aligned with the actual configuration. Update this file when project-wide conventions or constraints change.
