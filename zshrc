export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/ws/.oh-my-zsh"

ZSH_THEME="maran"

plugins=(
    git
    aws
    colored-man-pages
    colorize
    copybuffer # Ctrl-O to copy whats typed on the terminal
    debian
    docker
    fzf
    golang
    nmap
    pep8
    pass
    pyenv
    pylint
    python
    salt
    screen
    sudo
    tig
    urltools
    vagrant
    vi-mode
    ssh-agent
)

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Allow us to jump through words, Emacs style whilst using vi-mode plugin
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Environment
export FZF_BASE=$HOME/.fzf
export DISABLE_FZF_AUTO_COMPLETION="true"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# Aliases
alias ls='colorls'
alias l='colorls -l'
