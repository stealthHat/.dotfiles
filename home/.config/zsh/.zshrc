unsetopt MENU_COMPLETE   # do not autoselect the first completion entry
unsetopt FLOWCONTROL
setopt AUTO_MENU         # show completion menu on succesive tab press
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
autoload -U colors && colors # add color
setopt autocd		# Automatically cd into typed directory.

# remove the fucking beeb
unsetopt BEEP

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
# /h>

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# /b>

# Antibody
source <(antibody init)
antibody bundle < $HOME/.config/zsh/.zsh_plugins.txt
# /a>

# Oh my zsh HOME
export ZSH="$HOME/.config/zsh/.oh-my-zsh"
# source oh my zsh and alias
[ -f "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh"
[ -f "$HOME/.config/zsh/.zsh_aliases" ] && source "$HOME/.config/zsh/.zsh_aliases"
# /o>

# K8s autocomplete
[ -f /bin/kubectl ] && source <(kubectl completion zsh)
[ -f /bin/argocd ] && source <(argocd completion zsh)
# /k>

# Rvm and Nvm for neovim
[ -f "$HOME/.local/share/rvm/scripts/rvm" ] && source "$HOME/.local/share/rvm/scripts/rvm"
[ -s "$HOME/.local/share/nvm/nvm.sh" ] && source $HOME/.local/share/nvm/nvm.sh
# /r>

# Theme config
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
# /t>

# Vim on command line
export KEYTIMEOUT=1
bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
bindkey "^[OA" up-line-or-history
bindkey "^[OB" down-line-or-history
bindkey -M vicmd "k" up-line-or-history
bindkey -M vicmd "j" down-line-or-history
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}
zle -N zle-keymap-select
function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
}
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1
# /v>

# last line aways
source $HOME/.cache/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-zdharma-continuum-SLASH-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
