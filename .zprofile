#!/bin/zsh

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

# Default programs:
export BROWSER="brave"
export EDITOR="nvim"
export TERMINAL="kitty"

# Clean up $HOME 
export ZDOTDIR=$HOME/.config/zsh
export WGETRC=$HOME/.config/wget/wgetrc
export GNUPGHOME=$HOME/.config
