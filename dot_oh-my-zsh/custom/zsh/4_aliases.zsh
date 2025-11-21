# -----------------------------------------
# 📂 File Listing & Navigation
# -----------------------------------------

# Use eza (ls replacement) with icons and smart grouping
alias ls="eza --icons=auto --group-directories-first"
alias ll="eza -l --no-permissions --no-user --icons=auto --group-directories-first"
alias la="eza -la --no-permissions --no-user --icons=auto --group-directories-first"
alias l="eza -laF --icons=auto --group-directories-first"
alias lsg="eza -l --no-permissions --no-user --icons=auto --git --group-directories-first"

# Tree view for directory structures
alias tree="eza -T --icons=auto"

# Smart navigation via Zoxide
alias cd="z"

# -----------------------------------------
# 📝 Dotfiles & Config Management
# -----------------------------------------
# Edit your modular Zsh config
alias zconf="nvim $ZSH_CUSTOM/zsh"

# Manage dotfiles with Chezmoi
alias conf="chezmoi"

# Shorthand for NeoVim
alias vi="nvim"
alias cls="clear"
alias bconf="brew bundle dump --no-vscode --describe --force --file='$HOME/.config/Brewfile'"
