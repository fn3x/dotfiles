export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/.dotnet:~/.local/bin:/usr/local/go/bin:$HOME/go/bin/:$HOME/Odin/
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/lua-5.4.7:$PATH
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
export MANPATH=$HOME/local/share/man:$MANPATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git ssh-agent)

zstyle :omz:plugins:ssh-agent quiet yes
zstyle :omz:plugins:ssh-agent identities id_github id_bitbucket id_digitalocean id_aws.pem

source $ZSH/oh-my-zsh.sh

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

PATH="/home/fn3x/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/fn3x/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/fn3x/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/fn3x/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/fn3x/perl5"; export PERL_MM_OPT;
