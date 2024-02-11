# Setup fzf
# ---------
if [[ ! "$PATH" == */home/fn3x/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/fn3x/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/fn3x/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/fn3x/.fzf/shell/key-bindings.bash"
