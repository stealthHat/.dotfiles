#!/bin/zsh

# Default programs:
export BROWSER="librewolf"
export EDITOR="nvim"
export READER="zathura"
export TERMINAL="st"

# Clean up $HOME
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible/ansible.cfg"
export ASDF_CONFIG_FILE="${XDG_CONFIG_HOME}/asdf/asdfrc"
export ASDF_DATA_DIR="${XDG_DATA_HOME}/asdf"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}/gem"
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export GOPATH="${XDG_DATA_HOME}/go"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/pass"
export PSQL_HISTORY="${XDG_STATE_HOME}/psql_history"
export RUBY_BUILD_CACHE_PATH="${XDG_CACHE_HOME}"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export XAUTHORITY="${XDG_CONFIG_HOME}/Xauthority"
export XINITRC="${XDG_CONFIG_HOME}/X11/xinitrc"
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="${XDG_CONFIG_HOME}/java"

#less
export GROFF_NO_SGR=1
export LESSHISTFILE="-"
export LESSHISTSIZE=0
export LESS='-R -M -i -j.5 --incsearch'
export LESS_TERMCAP_mb=$'\e[1;38;5;196m'
export LESS_TERMCAP_md=$'\e[1;38;5;75m' 
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_so=$'\e[48;5;60;38;5;255m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;38;5;155m'
export LESS_TERMCAP_ue=$'\e[0m'

# LS_COLORS
eval "$(dircolors "${XDG_CONFIG_HOME}/dircolors")"

# Adds `~/.local/bin` to $PATH
export PATH="$ASDF_DATA_DIR/shims:${PATH}:${HOME}/.local/bin"
