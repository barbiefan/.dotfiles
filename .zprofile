#
# ~/.zprofile
#

export QT_QPA_PLATFORMTHEME="qt5ct"
export SHELL=/usr/bin/zsh
export EDITOR=nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/qutebrowser
export XDG_SESSION_TYPE=X11
export XDG_CONFIG_HOME="$HOME/.config/"
export TERMINAL=alacritty
export NO_AT_BRIDGE=1

export PATH="$PATH:$HOME/.bins"

export ETH=$(ip -o link show | awk -F': ' '{print $2}' | grep wl)
#mount NAS drive if is there

if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
fi



