[ -z "$PS1" ] && return
[ -e "$HOME/dotfiles" ] || git clone git@github.com:joshboon/dotfiles.git
cd dotfiles
git pull
[ -e "$HOME/.inputrc" ] && rm -rf $HOME/.inputrc
stow bash
[ -e "$HOME/.vim" ] && rm -rf $HOME/.vim*
stow vim
[ -e "$HOME/.git" ] && rm -rf $HOME/.git*
stow git
stow screen
cd $HOME
bind -f $HOME/.inputrc
source .bashrcfinal
