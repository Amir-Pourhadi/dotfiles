# -------------------------------
# 🗂️ Location & Size
# -------------------------------
HISTFILE=$HOME/.zsh_history       # Where history is saved
HISTSIZE=50000                    # Number of lines kept in memory
SAVEHIST=50000                    # Number of lines saved to the history file

# -------------------------------
# 🔄 Duplicate Handling
# -------------------------------
setopt HIST_IGNORE_DUPS           # Ignore duplicate commands from the same session
setopt HIST_IGNORE_ALL_DUPS       # Remove older duplicates across all history
setopt HIST_SAVE_NO_DUPS          # Do not save duplicates into the history file
setopt HIST_FIND_NO_DUPS          # Avoid duplicates when searching history with ↑ or Ctrl+R

# -------------------------------
# 🧹 Clean Formatting
# -------------------------------
setopt HIST_REDUCE_BLANKS         # Remove extra spaces in commands
setopt HIST_IGNORE_SPACE          # Ignore commands that start with a space ("private" commands)

# -------------------------------
# ⏱️ Immediate Saving & Sharing
# -------------------------------
setopt INC_APPEND_HISTORY         # Append commands to history right after execution
setopt SHARE_HISTORY              # Share history between all open shells in real time

# -------------------------------
# ⚠️ Safety
# -------------------------------
setopt HIST_VERIFY                # Put recalled command on the line for editing before execution

