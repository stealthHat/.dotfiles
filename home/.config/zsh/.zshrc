#!/bin/zsh

source "${ZDOTDIR}/zsh_manager"

# Normal files to .
. "${ZDOTDIR}/zsh_opt"
. "${ZDOTDIR}/zsh_completion"
. "${ZDOTDIR}/zsh_prompt"
. "${ZDOTDIR}/zsh_vim"
. "${ZDOTDIR}/zsh_aliases"

# Plugins
add_plugin "zdharma-continuum/fast-syntax-highlighting"
add_plugin "hlissner/zsh-autopair"
add_plugin "zsh-users/zsh-autosuggestions"

eval "$(zoxide init zsh)"
