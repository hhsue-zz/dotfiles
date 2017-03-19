###################### PERSONAL ######################

# aliases
alias new_session="sh ~/work/new_session.sh"
alias lsof_listen="sudo lsof -PiTCP -sTCP:LISTEN"
alias v='vim'
alias c='cat'
alias g='grep --color'
alias grep='grep --color'
alias f='find'

# golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="$PATH:$GOPATH/bin"

# git
alias glg='git log --oneline --graph --abbrev-commit --branches=* --decorate --color'
alias sl='git shortlog -s -n --all --no-merges'
# clean up git pager's output 
export LESS=R

# Unlimited history 
HISTSIZE= HISTFILESIZE=
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a" #; history -c; history -r"
# apply timestamp everytime
export HISTTIMEFORMAT="%d/%m/%y %T "

# autossh
export AUTOSSH_PORT=0
export AUTOSSH_POLL=1

# custom prompt
PROMPT_COLOR="\[\033[1;32m\]"
PS1="${PROMPT_COLOR}\u@\h \[\033[1;34m\]\w"'$(__git_ps1 " \[\e[1;33m\](%s)\[\e[0;39m\] ")'"\[\033[1;35m\]\$\[\033[0m\] "
