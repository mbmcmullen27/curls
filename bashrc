export EDITOR=vim

alias ls='ls --color=auto'

source ~/.bash_git
source /usr/share/bash-completion/completions/git


PS1='\033[1;34m[\u: \033[1;32m \W\033[1;34m]\033[1;33m$(__git_ps1 " ⇵  %s")\e[m\n$'