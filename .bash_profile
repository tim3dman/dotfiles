#!/bin/bash

# set PATH so that it includes users private bin/
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/builds/arduino-cli/bin"

# source ~/.bashrc

[[ -f ~/.bashrc ]] && . ~/.bashrc

## Autologin to sway

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

