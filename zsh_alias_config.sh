#!/usr/bin/bash

declare rc=$HOME/.$(basename $SHELL)rc
declare aliases=~/.zsh_aliases
declare downl='curl -fsSL'

if [ ! -d "$aliases" ]
then
 mkdir "$aliases"
fi

$downl https://gist.github.com/b3r8t3r/84dff565dceafd5190064f4f51e78453/raw/d624800ecd5ef3c864f8d9c03a3b1b214aa52116/.zshrc >> $rc

$downl https://gist.github.com/b3r8t3r/84dff565dceafd5190064f4f51e78453/raw/29d443508d691eb856d9b0d43c411a125a6b38bb/apt.zshrc >> "$aliases/`basename $_`"

$downl https://gist.github.com/b3r8t3r/84dff565dceafd5190064f4f51e78453/raw/29d443508d691eb856d9b0d43c411a125a6b38bb/git.zshrc >> "$aliases/`basename $_`"

$downl https://gist.github.com/b3r8t3r/84dff565dceafd5190064f4f51e78453/raw/29d443508d691eb856d9b0d43c411a125a6b38bb/python.zshrc >> "$aliases/`basename $_`"

$downl https://gist.github.com/b3r8t3r/84dff565dceafd5190064f4f51e78453/raw/29d443508d691eb856d9b0d43c411a125a6b38bb/shell.zshrc >> "$aliases/`basename $_`"

$downl https://gist.github.com/b3r8t3r/84dff565dceafd5190064f4f51e78453/raw/29d443508d691eb856d9b0d43c411a125a6b38bb/test.zshrc >> "$aliases/`basename $_`"