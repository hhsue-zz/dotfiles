export TERM=xterm-256color
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin
export M2_HOME=/maven3
export PATH=$M2_HOME/bin:$PATH
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export PATH=$JAVA_HOME/bin:/Users/hhsue/Downloads/MacVim-snapshot-61:$PATH
export PATH=$PATH:~/etfw2/bin:~/emtools/bin
export PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7
export WORKON_HOME=~/Envs
export PATH=$PATH:/opt/local/lib/postgresql93/bin
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7
source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
export PYTHON_PATH=/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/
export PATH=/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:$PATH


alias svn='/usr/local/Cellar/subversion17/1.7.14_1/bin/svn'

# added below to spice up prompt
# note: PS1 used to be \h:\W \u\$
PS1="\[\033[31m\][\h:\W \u\$]\[\033[0m\] "


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#WARNING MACPORTS ADDED 
export PATH=/opt/local/bin:/opt/local/sbin:$PATH


# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

