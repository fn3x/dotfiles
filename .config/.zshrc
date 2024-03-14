export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/.dotnet:~/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# use 256 color terminal
export TERM=xterm-256color

export COLORTERM=truecolor

# use nvim as standard editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# use nvim if available
if [ -x "$(command -v nvim)" ]; then
    alias vim='nvim'
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias fman="compgen -c | fzf | xargs man"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=${ZDOTDIR:-~}/.zsh_functions
