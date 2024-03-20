#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

alias vim='nvim'
alias g='git'

alias l='eza'
alias la='eza -a --icons'
alias ll='eza -l --icons'
alias lla='eza -la --icons'

# use multiple version of nvim
alias lazy-vim="NVIM_APPNAME=lazy-vim nvim"
alias doom-nvim="NVIM_APPNAME=doom-nvim nvim"
alias nvc="NVIM_APPNAME=nvchad nvim"

alias g="git"
alias gss="git status --short"

alias config="/usr/bin/git --git-dir=$HOME/Dotfiles --work-tree=$HOME"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# . "/home/alaidine/.local/share/cargo/env"
