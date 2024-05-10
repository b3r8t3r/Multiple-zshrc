alias zshconfig="nano ~/.zshrc"
alias bashconfig="nano ~/.bashrc"
alias nanconfig="nano ~/.nanorc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias zshreconfig=". ~/.zshrc"

alias clr="clear"

alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias l.="ls -d .* --color=auto"
alias lt="ls --tree"

alias h="history"
alias j="jobs -l"

function mkcd {
     mkdir $1 && cd $1
}