# ------------- Environment -------------

# OpenSSH agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Editor
if [[ -n "$SSH_CONNECTION" ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
  export VISUAL='nvim'
fi

# PATH
typeset -U path PATH
path=(
  "$HOME/.volta/bin"
  "$HOME/bin"
  "$HOME/.local/bin"
  "$HOME/.opencode/bin"
  $path
)

# File listing colors
export EZACOLORS=always
export LS_COLORS='di=34:ln=36:so=35:pi=33:ex=32:bd=46;34:cd=43;34:su=41;33:sg=46;30:tw=42;30:ow=43;34:st=37;44'

# Pager
export PAGER='less -R'
