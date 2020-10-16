#!/bin/zsh

# Default programs:
export BROWSER="brave"
export EDITOR="nvim"
export TERMINAL="kitty"
export READER="zathura"

# Clean up $HOME 
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GEM_PATH="${XDG_CONFIG_HOME:-$HOME/.config}/rvm"
export GEM_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/rvm"
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvm"
export rvm_path="${XDG_CONFIG_HOME:-$HOME/.config}/rvm"
export LESSHISTFILE="-"

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
export PATH="$PATH:$GEM_PATH"

# Starts X when login 
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
