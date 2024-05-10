alias gfm="git fetch && git merge"
alias ga.="git add ."
alias gc="git commit -S -m"
alias gp="git push"
alias gs="git status"
alias gsubiu="git submodule update --init"
alias gsubiur="git submodule update --init -recursive"
alias gsubur="git submodule update --remote"
alias grm="git rebase master"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grs="git rebase --skip"
alias gpo="git push origin"
alias gplo="git pull origin"
alias gs="git stash"
alias gsa="git stash apply"

function clone {
    git clone https://github.com/$1
}

function clone-private {
    git clone git@github.com:$1.git
}

function clone-cd {
    git clone $1 && cd $(basename $_ .git)
}
