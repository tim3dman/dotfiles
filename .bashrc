#!/bin/bash

# ~/.bashrc 27.01.23

# prompt set system wide in /etc/bash.bashrc
# PATH set in .bash_profile
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# append a session's history on shell exit
shopt -s histappend
export HISTFILESIZE=
export HISTSIZE=

# History options
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='q:ls:c:cd:cl:h:alias'

# shell options
set -o noclobber
shopt -s autocd

# wayland options
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland
export MOZ_USE_XINPUT2=1
export XDG_CURRENT_DESKTOP=sway
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

# aliases
alias ...='cd ../..'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias c='clear'
alias q='exit'
alias pacu='sudo pacman -Syu'
alias yayu='yay -Sua'
alias df='df -kh'
alias cl='c;ls -lA'
alias h='history'
alias hg='history | grep'
alias off='shutdown -P now'
alias out='pkill -u tim' # logout
alias dmesg='dmesg -eHL'
alias journal='journalctl -xe'
alias grep='grep -sI --color=auto' # colorful (auto) 'grep' output
alias rm='rm -v'
alias mv='mv -v'
alias mkdir='mkdir -v'
alias cp='cp -v'
alias chown='chown -v'
alias chmod='chmod -v'
alias rmdir='rmdir -v'
alias bashrc='nvim ~/.bashrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias vimrc='vim ~/.vimrc'
alias swayconf='nvim ~/.config/sway/config' # sway config file
alias i3status='nvim ~/.config/i3status/config.toml' # i3status config file
alias packages="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias orphans='pacman -Rns $(pacman -Qtdq)'
alias sudo='sudo '
alias service='systemctl list-unit-files --state=enabled --no-pager'
alias check='checkupdates'
alias syssus='systemctl suspend'
alias syshib='systemctl hibernate'
alias syssth='systemctl suspend-then-hibernate'
alias syshsl='systemctl hybrid-sleep'
alias tbin='nc termbin.com 9999' # file posting $ cat ~/some_file.txt | tb
alias tmuxrc='nvim ~/.config/tmux/tmux.conf'
alias activate='source venv/bin/activate'
alias milk='milcheck -n 1' # check mirror status and latest news
alias piaon='systemctl start openvpn-client@client.service' # start pia vpn service
alias piaoff='systemctl stop openvpn-client@client.service'
alias timserv='ssh tim@192.168.50.200'
alias gitserv='ssh git@192.168.50.200'
alias syncback='rsync -auvz Documents tim@192.168.50.200:'
alias ip='ip -c' # ip with color
