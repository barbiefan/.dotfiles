if [[ $1 == eval ]]
then
    "$@"
set --
fi

setxkbmap -layout us,ru
setxkbmap -option 'grp:alt_shift_toggle'

setopt correct
setopt extendedglob
setopt nocaseglob
setopt rcexpandparam
setopt nocheckjobs
setopt numericglobsort
setopt nobeep
setopt appendhistory
setopt histignorealldups
setopt autocd
setopt inc_append_history
setopt histignorespace

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' rehash true
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
WORDCHARS=${WORDCHARS//\/[&.;]}

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/obey/.config/broot/launcher/bash/br
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
autoload edit-command-line
zle -N edit-command-line

export BROWSER=/usr/bin/qutebrowser
export TERMINAL=alacritty
export YTFZF_THUMB_DISP_METHOD='chafa'
# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R

alias vim='nvim'
alias diff='nvim -d'
alias journalclear='doas journalctl --vacuum-size=100M'
alias packages='pacman -Qei | awk "/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }"'
alias c='clear; rxfetch'
alias ls='exa -lh --icons --group-directories-first --git'
alias la='exa -alh --icons --group-directories-first --git'
alias lx='exa -FHSUaghilmu@ --group-directories-first --icons --git'
alias tree='exa -alhT --group-directories-first --git'
alias search='doas fzf -e'
alias repo='cd ~/Documents/git/'
alias du='doas dust -r'
alias uname='uname -snrmo'
alias dmount='dmenumount'
alias dumount='dmenuumount'
alias config='dotfiles -c edit'
alias dotfiles'dotfiles -i'
#alias pubip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ntop='doas tcptrack -i wlo2'
alias nscan='doas nmap -A'
alias windows='export DISPLAY=:0.0; wmctrl -l'
alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias gitu='git add . && git commit && git push'

## Keybindings section
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[C'  forward-char
bindkey '^[[D'  backward-char
bindkey '^[Oc' forward-word
bindkey '^[Od' backward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^H' backward-kill-word
bindkey '^[[Z' undo
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey -v
bindkey -M vicmd e edit-command-line

# Theming section  
autoload -U compinit colors zcalc
compinit -d
colors

