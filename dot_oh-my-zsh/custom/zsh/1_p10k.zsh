# -------------------------------
# ⚡ Instant Prompt
# -------------------------------

# Loads instantly for faster shell startup
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -------------------------------
# 🎨 Theme
# -------------------------------
P10K_PATH="/home/linuxbrew/.linuxbrew/share/powerlevel10k/powerlevel10k.zsh-theme"

# Only source if Powerlevel10k is installed
if [[ -f "$P10K_PATH" ]]; then
  source "$P10K_PATH"
else
  echo "⚠️ Powerlevel10k not found at $P10K_PATH"
fi

# -------------------------------
# 🛠 Custom Configuration
# -------------------------------
# Load user's custom prompt settings if present
if [[ -f ~/.p10k.zsh ]]; then
  source ~/.p10k.zsh
else
  echo "ℹ️ No ~/.p10k.zsh found, run 'p10k configure' to create one"
fi

