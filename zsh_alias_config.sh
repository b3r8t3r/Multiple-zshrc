#!/usr/bin/bash

declare rc=$HOME/.$(basename $SHELL)rc
declare aliases=~/.zsh_aliases
declare downl='curl -fsSL'
declare sys=`uname`

if [ ! -d "$aliases" ]
then
 mkdir "$aliases"
fi

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/base.zshrc >> $rc

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/apt.zshrc >> "$aliases/`basename $_`"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/git.zshrc >> "$aliases/`basename $_`"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/python.zshrc >> "$aliases/`basename $_`"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/shell.zshrc >> "$aliases/`basename $_`"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/test.zshrc >> "$aliases/`basename $_`"

if [ "$sys" == "Darwin" ]
then
$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/macos.zshrc >> "$aliases/`basename $_`"
fi

if [ "$sys" == "Linux" ]
then
$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/linux.zshrc >> "$aliases/`basename $_`"
fi
