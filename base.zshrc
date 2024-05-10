function load_aliases () { for 1; source -- $1 }
if [ -d ~/.zsh_aliases ]
then
 load_aliases $HOME/.zsh_aliases/*.zshrc
fi