# ------------- History -------------

HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

# Duplicate handling
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS

# Clean formatting
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

# Immediate saving and sharing
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Safety
setopt HIST_VERIFY
