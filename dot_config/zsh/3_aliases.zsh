# ------------- File Listing & Navigation -------------

alias ls='eza --icons=auto --group-directories-first'
alias ll='eza -l --no-permissions --no-user --icons=auto --group-directories-first'
alias la='eza -la --no-permissions --no-user --icons=auto --group-directories-first'
alias l='eza -laF --icons=auto --group-directories-first'
alias lsg='eza -l --no-permissions --no-user --icons=auto --git --group-directories-first'

alias tree='eza -T --icons=auto'
alias cd='z'

# ------------- Dotfiles & Configuration -------------

alias zconf='nvim "$ZSH_CONFIG"'
alias conf='chezmoi'

# ------------- Shortcuts -------------

alias v='nvim'
alias cls='clear'
alias up='sudo dnf upgrade -y --refresh'

# ------------- Downloads -------------

dl() {
  aria2c --conf-path="$HOME/.config/aria2/aria2.conf" "$@"
}

dll() {
  aria2c \
    --conf-path="$HOME/.config/aria2/aria2.conf" \
    --all-proxy='http://127.0.0.1:10808' \
    "$@"
}
