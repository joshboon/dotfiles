[  -d "~/dotfiles" ] && git clone git@github.com:joshboon/dotfiles.git
cd dotfiles
git pull
stow bash
[ ! -d "~/.vim" ] && rm -rf .vim*
stow vim
[ ! -d "~/.git" ] && rm -rf .git*
stow git
stow screen
cd ~
bind -f ~/.inputrc
source .bashrcfinal
