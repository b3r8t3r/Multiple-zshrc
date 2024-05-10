#!/usr/bin/bash

declare rc=$HOME/.$(basename $SHELL)rc
declare aliases=$HOME/.zsh_aliases
declare downl='curl -fsSL'

if [ ! -d "$aliases" ]
then
 mkdir "$aliases"
fi

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/base.zshrc >> $rc

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/git.zshrc >> "$aliases/git.zshrc"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/python.zshrc >> "$aliases/python.zshrc"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/shell.zshrc >> "$aliases/shell.zsrc"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/test.zshrc >> "$aliases/test.zshrc"

if [ "`uname -o`" = "Darwin" ]
then
$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/macos.zshrc >> "$aliases/macos.zshrc"
fi

if [ "`uname -o`" = "GNU/Linux" ]
then
$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/linux.zshrc >> "$aliases/linux.zshrc"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/linux-apt.zshrc >> "$aliases/linux-apt.zshrc"
fi

if [ "`uname -o`" = "Android" ]
then
$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/termux.zshrc >> "$aliases/termux.zshrc"

$downl https://github.com/b3r8t3r/Multiple-zshrc/raw/master/.zsh_aliases/termux-apt.zshrc >> "$aliases/termux-apt.zshrc"
fi
