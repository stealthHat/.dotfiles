#!/bin/zsh

source "${ZDOTDIR}/zsh_manager"

# Normal files to .
add_file "zsh_opt"
add_file "zsh_completion"
add_file "zsh_prompt"
add_file "zsh_vim"
add_file "zsh_aliases"

# Plugins
add_plugin "zdharma-continuum/fast-syntax-highlighting"
add_plugin "hlissner/zsh-autopair"
add_plugin "zsh-users/zsh-autosuggestions"

. /opt/asdf-vm/asdf.sh
