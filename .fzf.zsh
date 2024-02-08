# Setup fzf
# ---------
if [[ ! "$PATH" == */home/fn3x/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/fn3x/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/fn3x/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/fn3x/.fzf/shell/key-bindings.zsh"
