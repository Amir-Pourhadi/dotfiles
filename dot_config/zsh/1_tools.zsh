# ------------- Shell Options -------------

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS
setopt EXTENDED_GLOB

# ------------- Vi Mode & Keybindings -------------

bindkey -v

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Search history using the current command prefix.
bindkey -M viins '^[[A' up-line-or-beginning-search
bindkey -M viins '^[[B' down-line-or-beginning-search
bindkey -M viins '^[OA' up-line-or-beginning-search
bindkey -M viins '^[OB' down-line-or-beginning-search

# Paste from the Wayland clipboard in vi command mode.
zle_clipboard_paste() {
  local clipboard

  clipboard=$(wl-paste) || return 1
  LBUFFER+="$clipboard"
}
zle -N zle_clipboard_paste
bindkey -M vicmd 'p' zle_clipboard_paste

# Bracketed paste
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

# ------------- Completion -------------

ZCOMPDUMP="$HOME/.cache/zcompdump"

autoload -Uz compinit
if [[ -f "$ZCOMPDUMP" ]]; then
  compinit -C -d "$ZCOMPDUMP"
else
  compinit -d "$ZCOMPDUMP"
fi

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' verbose yes

# ------------- Command-Line Tools -------------

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi

if (( $+commands[fzf] )); then
  source <(fzf --zsh)
fi

if (( $+commands[starship] )); then
  export STARSHIP_CONFIG="$HOME/.config/starship.toml"
  eval "$(starship init zsh)"
fi

# ------------- FZF Tab -------------

FZF_TAB_PLUGIN="$HOME/.local/share/fzf-tab/fzf-tab.plugin.zsh"

if [[ -r "$FZF_TAB_PLUGIN" ]]; then
  source "$FZF_TAB_PLUGIN"

  zstyle ':fzf-tab:*' switch-group ',' '.'
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --icons=always -1 "$realpath"'
  zstyle ':fzf-tab:complete:*' fzf-preview 'bat --color=always --style=numbers --line-range=:200 "$realpath" 2>/dev/null'
fi

# ------------- Suggestions & Highlighting -------------

if [[ -r /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Keep syntax highlighting last among ZLE plugins.
if [[ -r /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
