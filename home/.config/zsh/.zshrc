#!/bin/bash

# History
HISTSIZE=1000000
SAVEHIST=1000000

# Some useful options (man zshoptions)
unsetopt BEEP
setopt appendhistory
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

# Completions
autoload -Uz compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
unsetopt CASE_GLOB
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 2 numeric
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to .
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"

# Plugins
zsh_add_plugin "spaceship-prompt/spaceship-prompt"
zsh_add_plugin "zdharma-continuum/fast-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "zsh-users/zsh-autosuggestions"

source $ASDF_DIR/lib/asdf.sh
