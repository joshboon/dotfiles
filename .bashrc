[ ! -d ""~/dotfiles" ] && git clone git@github.com:joshboon/dotfiles.git
cd dotfiles
git pull
stow bash
stow vim
stow git
cd ~
bind -f ~/.inputrc
source .bashrcfinal
