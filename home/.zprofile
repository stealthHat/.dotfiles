#!/bin/zsh

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin"

# Default programs:
export BROWSER="brave"
export EDITOR="nvim"
export TERMINAL="st"
export READER="zathura"

# Clean up $HOME
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_CONFIG_HOME/Xauthority"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="${ZDOTDIR}/.zsh_history"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible/ansible.cfg"
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export RUBY_BUILD_CACHE_PATH="$XDG_CACHE_HOME"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
export LESSHISTFILE="-"
