ohmyzsh_init() {
    export ZSH="/home/ws/.oh-my-zsh"
    export ZSH_THEME="maran"

     # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
    plugins=(
        git
        aws
        colored-man-pages
        colorize
        copybuffer
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
}


environ() {
    export PATH=$HOME/bin:/usr/local/bin:$PATH
    export FZF_BASE=$HOME/.fzf
    export DISABLE_FZF_AUTO_COMPLETION="true"
    export MANPATH="/usr/local/man:$MANPATH"
    export LANG=en_US.UTF-8
}


vim_mode_bindkeys() {
    bindkey "^[[1;5C" forward-word    # Ctrl-RightArrow: Move cursor forward one word
    bindkey "^[[1;5D" backward-word   # Ctrl-LeftArrow: Move cursor backward one word
    bindkey "^W" backward-kill-word   # Ctrl-W: Delete word
    bindkey '^[^?' backward-kill-word # Alt-Backspace: Delete word
    bindkey "^H" backward-delete-char # Ctrl-H: Delete char
    bindkey "^U" backward-kill-line   # Ctrl-U: Delete line backwards
}


main() {
    ohmyzsh_init
    environ
    vim_mode_bindkeys
}
main

alias ls='colorls'
alias l='colorls -l'
alias tail='grc tail'
