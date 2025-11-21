# 📝 Editor Configuration

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# 🌈 Force eza to always use colors
export EZACOLORS=always

# 🎨 File type colors (LS_COLORS)
# di = directory,     ln = symlink,     so = socket,      pi = pipe,        ex = executable,      bd = block device
# cd = char device,   su = setuid,      sg = setgid,      tw = sticky dir,  ow = other writable,  st = sticky
export LS_COLORS='di=34:ln=36:so=35:pi=33:ex=32:bd=46;34:cd=43;34:su=41;33:sg=46;30:tw=42;30:ow=43;34:st=37;44'

# 📖 Pager for commands like `man` or `git log`
# -R: keep ANSI colors when displaying output
export PAGER='less -R'

# 🛣 PATH Setup
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export HOMEBREW_NO_ENV_HINTS=1

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.volta/bin:$PATH"

