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
export GEM_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/gem"
export GEM_SPEC_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/gem"
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvm"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export rvm_path="${XDG_CONFIG_HOME:-$HOME/.config}/rvm"
export XAUTHORITY="${XDG_CONFIG_HOME:-$HOME/.config}/Xauthority"
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config
export LESSHISTFILE="-"

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
