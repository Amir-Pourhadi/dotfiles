# 💻 Amir’s Dotfiles

Welcome to my personal dotfiles repository! This repo manages my Linux, Neovim, Tmux, WezTerm, and Zsh configurations using **Chezmoi** for reproducible and portable setups.

---

## 🚀 Features

* ⚡ **Fast & Lightweight** – Clean, minimal, and modular configuration.
* 🛠️ **Managed with Chezmoi** – Templates, symlinks, and host-specific configuration.
* 🖌️ **Beautiful Prompts & Themes** – Powerlevel10k Zsh prompt, custom Tmux/WezTerm settings, and icons.
* 🔐 **Secure & Private** – Supports encrypted secrets and private configuration.
* 💡 **Portable & Reproducible** – Apply on any Linux machine with minimal setup.

---

## 📂 Repo Structure

```
dotfiles/
├─ clip.exe                  # Windows utility for clipboard management
├─ dot_config                # Custom configuration folder
├─ Brewfile                  # Homebrew package list
├─ nvim/                     # Neovim configuration folder
│  ├─ init.lua               # Main Neovim configuration file
│  └─ lua/                   # Lua modules for Neovim
│      └─ src/               # Source folder for plugin and option configs
│          ├─ core/          # Core Neovim settings and options
│          │   ├─ options.lua
│          └─ plugins/       # Plugin configurations
├─ wezterm/                  # WezTerm terminal configuration
│  ├─ config.lua             # General config settings
│  ├─ events.lua             # Event handlers
│  ├─ utils.lua              # Utility functions
│  └─ wezterm.lua            # Main WezTerm entry file
├─ dot_gitconfig.tmpl        # Git configuration template
├─ dot_oh-my-zsh/            # Oh-My-Zsh customizations
│  └─ custom/                # Custom Zsh scripts and plugins
│      └─ zsh/               # Individual Zsh modules
│          ├─ 0_paths.zsh    # Path setup
│          ├─ 1_p10k.zsh     # Powerlevel10k prompt config
│          ├─ 2_plugins.zsh  # Zsh plugins load
│          ├─ 3_history.zsh  # History options
│          └─ 4_aliases.zsh  # Aliases
├─ dot_p10k.zsh              # Powerlevel10k main configuration
└─ dot_zshrc                 # Main Zsh configuration
```

---

## ⚙️ Requirements

* **Chezmoi** – for managing dotfiles
* **Zsh / Oh-My-Zsh** – preferred shell
* **Powerlevel10k** – recommended for Zsh prompt
* **Neovim** – for editing and custom keymaps
* **Tmux** – terminal multiplexer
* **WezTerm** – modern terminal
* 💡 Optional: Fonts supporting Nerd Fonts icons (FiraCode Nerd Font recommended)

---

## 🛠️ Bootstrap / Setup

Run this on a fresh machine to apply all configs:

```bash
# 1️⃣ Install Chezmoi (if not installed)
sh -c "$(curl -fsLS get.chezmoi.io)"

# 2️⃣ Clone & apply your dotfiles
chezmoi init --apply https://github.com/Amir-Pourhadi/dotfiles
```

> ⚠️ Always check `chezmoi diff` before applying updates to review changes.

---

## 📝 Configuration

* **Zsh** – Managed in `dot_zshrc` and `dot_oh-my-zsh/custom/zsh` with modular plugins.
* **Powerlevel10k** – Prompt configured in `dot_p10k.zsh` for speed & icons.
* **Neovim** – Core config in `nvim/init.lua` with Lua modules, plugins, and options.
* **WezTerm** – Terminal appearance and behaviors configured in `wezterm/`.
* **Git** – Template in `dot_gitconfig.tmpl` supports host-specific variables.

💡 Tip: Use host-specific variables in `.chezmoi.toml.tmpl` (if needed) to override settings per machine.

---

## 🔐 Secrets & Sensitive Files

* Never commit passwords, API keys, or private SSH keys.
* Use Chezmoi encryption (`chezmoi encrypt-file`) for sensitive files.
* `.chezmoiignore` excludes machine-specific temporary files and secrets.

---

## 📌 Best Practices

* 🧹 **Keep it clean** – Only track necessary dotfiles.
* 🔄 **Use templating** – Avoid duplication across hosts.
* 🏷️ **Versioning** – Tag stable configurations for rollback.
* 🧪 **Test on new machines** – Always dry-run before applying.

---

## 🔗 Resources

* [Chezmoi Official](https://www.chezmoi.io)
* [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
* [Neovim](https://neovim.io)
* [Tmux](https://github.com/tmux/tmux)
* [WezTerm](https://wezfurlong.org/wezterm/)
* [Nerd Fonts](https://www.nerdfonts.com)

---

## 🧑‍💻 Author

Amir Pourhadi – Maintainer of these dotfiles.
Feel free to fork, contribute, or suggest improvements.

