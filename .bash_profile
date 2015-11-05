export PATH=$(brew --prefix)/sbin:$(brew --prefix)/bin:$PATH:$HOME/bin

# added by newengsetup
export EDITOR=vim
export UBER_HOME="$HOME/Uber"
export UBER_OWNER="hhenry@uber.com"
export VAGRANT_DEFAULT_PROVIDER=aws
[ -s "/usr/local/bin/virtualenvwrapper.sh" ] && . /usr/local/bin/virtualenvwrapper.sh
[ -s "$HOME/.nvm/nvm.sh" ] && . $HOME/.nvm/nvm.sh
type "brew" &>/dev/null && [ -s "$(brew --prefix)/etc/bash_completion" ] && . $(brew --prefix)/etc/bash_completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

cdsync () {
    cd $(boxer sync_dir $@)
}
editsync () {
    $EDITOR $(boxer sync_dir $@)
}
opensync () {
    open $(boxer sync_dir $@)
}

export VAGRANTNAME='oldsmobile-arnage-7'
alias gg='git log --oneline --abbrev-commit --branches=* --graph --decorate --color'
export HISTSIZE=""

# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/Work/liquidprompt/liquidprompt
alias china='ssh-agent bash --rcfile ~/.ssh/china/.bash_profile.cn'

. /Users/henryhsue/Work/z/z.sh
name(){ echo -e "\033];$1\007"; }

export PYTHONPATH+=~/Uber/clustoclient

alias ctags="`brew --prefix`/bin/ctags"
gitolite='gitolite@uber.code.internal'


export PATH=$PATH:/usr/local/opt/go/libexec/bin
