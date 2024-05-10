#!/usr/bin/bash

declare rc=$HOME/.$(basename $SHELL)rc
declare aliases=$HOME/.zsh_aliases
declare downl='curl -fsSL'

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

if [ "`uname`" = "Darwin" ]
then
$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/macos.zshrc >> "$aliases/macos.zshrc"
fi

if [ "`uname`" = "Linux" ]
then
$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/linux.zshrc >> "$aliases/linux.zshrc"
fi
