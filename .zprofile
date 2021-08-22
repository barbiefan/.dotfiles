#
# ~/.zprofile
#

export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/qutebrowser
export XDG_SESSION_TYPE=X11
export XDG_CONFIG_HOME="$HOME/.config/"
export TERMINAL=alacritty



if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; 
then exec startx; 
fi

