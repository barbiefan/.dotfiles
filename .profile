export QT_QPA_PLATFORMTHEME="qt5ct"
export SHELL=/usr/bin/zsh
export EDITOR=nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/qutebrowser
export NO_AT_BRIDGE=1
setxkbmap -layout us,ru
setxkbmap -option 'grp:alt_shift_toggle'

git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME fetch
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME pull
alacritty --title "alacritty widget" -e zsh -ic "{git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME status} && read"
