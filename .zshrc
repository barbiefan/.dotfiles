
if [[ $1 == eval ]]
then
    "$@"
set --
fi


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

export BROWSER=/usr/bin/qutebrowser
export TERMINAL=alacritty

export YTFZF_THUMB_DISP_METHOD="chafa"

alias vim="nvim"
alias journalclear="doas journalctl --vacuum-size=100M"
alias sysupgrade="yay -Syyuu"
alias packages="pacman -Qei | awk '/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }'"
alias c="clear; rxfetch"
alias la="exa -alh --icons --group-directories-first --git"
alias tree="exa -alhT --group-directories-first --git"
alias search="doas fzf -e"
alias repo="cd ~/Documents/git/"
alias du="doas dust -r"
alias uname="uname -snrmo"
alias dmount="dmenumount"
alias dumount="dmenuumount"

alias config="dotfiles -c edit"
alias dotfiles"dotfiles -i"


alias mallenom="~/.mallenom/vpn.sh"
#alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ntop="doas tcptrack -i wlo2"
alias nscan="doas nmap -A"

alias windows="export DISPLAY=:0.0; wmctrl -l"

bindkey -v


source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
