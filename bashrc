### Init
function startup() {
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash

    if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
    fi
}

startup

### Functions


### Prompt
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}


### Environment
export PS1='\[\033[01;34m\]\u@\h \e[38;5;211m\W\e[38;5;48m $(parse_git_branch)\[\033[00m\]\$ '

export HISTSIZE=10000
export HISTFILESIZE=20000
export VISUAL="vim"
export GIT_EDITOR="vim"
export EDITOR="vim"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


### Shell options
shopt -s autocd
shopt -s histappend
shopt -s checkwinsize
shopt -s hostcomplete

### VIM mode
# Set using readline in .inputrc


### Aliases
alias info="info --vi-keys"
