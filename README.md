# Load multiple .zshrc file configurations at once

If you're tired of having a lot of aliases in one ~/.zshrc file, you can do these things:

[Make everything with your hands](#manual-installation) or [use the installation script to install aliases from this gist](#scripted-installation).

## Scripted installation

To setup your zsh environment, script creates a folder `~/.zsh_aliases` and copies all of the aliases from the gist

```bash
curl -fsSL https://gist.github.com/b3r8t3r/84dff565dceafd5190064f4f51e78453/raw/1e9accc42aed4e29ae88cf08d3382cf0eb21df45/zsh_alias_config.sh | bash
```

## Manual installation

If you want to do all of this manualy, go for these steps:

`mkdir ~/.zsh_aliases`

Then, open your ~/.zshrc file and add this:

```bash
function load_aliases () { for 1; source -- $1 }
if [ -d ~/.zsh_aliases ]
then
 load_aliases $HOME/.zsh_aliases/*.zshrc(ND)
fi
```

After that, you can add custom .zshrc files in ~/.zsh_aliases folder. Don't forget to `. ~/.zshrc`.