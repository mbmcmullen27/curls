source /etc/profile.d/bash-completion.sh
source ~/.bash_git

PS1='\033[1;34m[\u: \033[1;32m \W\033[1;34m]\033[1;33m$(__git_ps1 " ⇵  %s")\e[m\n$'