#!/bin/zsh

source "$ZDOTDIR/zsh_manager"

# Normal files to .
add_file "zsh_opt"
add_file "zsh_prompt"
add_file "zsh_vim"
add_file "zsh_aliases"

# Completions
autoload -Uz compinit
zstyle ':completion:*' menu yes select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
zle_highlight=('paste:none')
for dump in "${ZDOTDIR}/.zcompdump"(N.mh+24); do
  compinit
done
compinit -C

# Plugins
add_plugin "zdharma-continuum/fast-syntax-highlighting"
add_plugin "hlissner/zsh-autopair"
add_plugin "zsh-users/zsh-autosuggestions"

. /opt/asdf-vm/asdf.sh
