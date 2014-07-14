#catch non interactive and bail
case $- in
    *i*) ;;
      *) return;;
esac
USER=$(who am i | awk '{ print $1}')
HOME=/home/$USER
if [[ ! -d "$HOME/dotfiles" &&  "$(whoami)" = "$USER" ]]
then
git clone git@github.com:joshboon/dotfiles.git
elif [[ ! "$(whoami)" = "root" ]] 
then
cd dotfiles
git pull
[ -e "$HOME/.inputrc" ] && rm -rf $HOME/.inputrc
stow bash
[ -e "$HOME/.vim" ] && rm -rf $HOME/.vim*
stow vim
[ -e "$HOME/.git" ] && rm -rf $HOME/.git*
stow git
stow screen
fi
cd $HOME
bind -f $HOME/.inputrc
source .bashrcfinal
