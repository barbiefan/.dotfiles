
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

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export BROWSER=/usr/bin/qutebrowser
export TERMINAL=alacritty

alias journalclear="doas journalctl --vacuum-size=100M"
alias sysupgrade="yay -Syyuu"
alias packages="pacman -Qei | awk '/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }'"
alias c="clear; neofetch; colorful"
alias la="exa -alh --icons --group-directories-first --git"
alias ls="exa -lh --icons --group-directories-first --git"
alias tree="exa -alhT --group-directories-first --git"
alias search="doas fzf -e"
alias ysi="yay -S \$(yay -Pc | awk '{print \$1}' | fzf -m --reverse)"
alias ysr="yay -Rc \$(yay -Q | awk '{print \$1}' | fzf -m --reverse)"
alias repo="cd ~/Documents/git/"
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias du="doas dust -r"
alias uname="uname -snrmo"
alias dmount="doas mount \$(doas fdisk -l | grep -oE '/dev/[a-zA-Z]+[0-9]+' | dmenu) \$(bash -c 'ls -a' | dmenu)"
alias dumount="doas umount \$(doas mount | grep -oE '/dev/[a-zA-Z]+[0-9]+' | dmenu)"

alias zshrc="$EDITOR ~/.zshrc"
alias vim="nvim"
alias alaconfig="$EDITOR ~/.config/alacritty/alacritty.yml"
alias prompt="doas chmod 777 /usr/share/zsh; p10k configure; doas chmod 755 /usr/share/zsh"
alias i3config="vim ~/.i3/config"

alias mallenom="~/.mallenom/vpn.sh"
#alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ntop="doas tcptrack -i wlo2"
alias nscan="doas nmap -A"

alias windows="export DISPLAY=:0.0; wmctrl -l"

alias cact="conda activate ./"
alias cdeact="conda deactivate"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


