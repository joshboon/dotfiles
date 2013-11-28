[ -z "$PS1" ] && return
[ -e "~/dotfiles" ] || git clone git@github.com:joshboon/dotfiles.git
cd dotfiles
git pull
[ -e "~/.inputrc" ] && rm -rf ~/.inputrc
stow bash
[ -e "~/.vim" ] && rm -rf ~/.vim*
stow vim
[ -e "~/.git" ] && rm -rf ~/.git*
stow git
stow screen
cd ~
bind -f ~/.inputrc
source .bashrcfinal
