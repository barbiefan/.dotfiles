export QT_QPA_PLATFORMTHEME="qt5ct"
export SHELL=/usr/bin/zsh
export EDITOR=nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/qutebrowser
export NO_AT_BRIDGE=1

export PATH="$PATH:$HOME/.bins"

export ETH=$(ip -o link show | awk -F': ' '{print $2}' | grep wl)

setxkbmap -layout us,ru
setxkbmap -option 'grp:alt_shift_toggle'

