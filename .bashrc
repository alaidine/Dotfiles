#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set -o vi

# . "/home/alaidine/.local/share/cargo/env"
export PATH=/home/alaidine/.local/bin:$PATH
export PATH=/home/alaidine/.cargo/env:$PATH
export PATH=/home/alaidine/.cargo/bin:$PATH
export PATH=/home/alaidine/go/bin:$PATH
export PATH=/home/alaidine/bin:$PATH
export PATH=/home/alaidine/bin/python-venv/bin/:$PATH
export PATH=/home/alaidine/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH=/home/alaidine/.config/composer/vendor/bin:$PATH

export C_INCLUDE_PATH=/home/alaidine/include:$C_INCLUDE_PATH

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib

export PATH=$PATH:/usr/local/go/bin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Turso
export PATH="/home/alaidine/.turso:$PATH"

# Fly.io
export FLYCTL_INSTALL="/home/alaidine/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"

alias vim='nvim'
alias nwmacs="emacs --no-window-system"
# alias emacs="emacsclient ./"
alias pipes='pipes.sh'

# use multiple version of nvim
alias vimd="NVIM_APPNAME=doom-nvim nvim"
alias vc="NVIM_APPNAME=nvchad nvim"
alias tim="NVIM_APPNAME=tim nvim"
alias dvim="NVIM_APPNAME=dvim nvim"
alias av="NVIM_APPNAME=astro-vim nvim"

# fzf aliases
alias fzfc="fzf --preview='less {}'"
alias fzfb="fzf --preview='bat --color=always --style=numbers {}'"

alias config="/usr/bin/git --git-dir=$HOME/Dotfiles --work-tree=$HOME"

alias f="zi"
alias gz="git-fzf"

alias val="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes"

alias ls='eza $eza_params'
alias l='eza --git-ignore $eza_params'
alias ll='eza --header --long $eza_params'
alias lla='eza --all --header --long $eza_params'
alias llm='eza --all --header --long --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params'
alias tree='eza --tree $eza_params'

alias hx='helix'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# For bash subshells, add to ~/.bashrc or ~/.bash_profile.
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash"}}\x9c'

eval "$(zoxide init bash)"
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\
\[\033[00m\]\$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\
\[\033[31m\]\$(git rev-parse --is-inside-work-tree >/dev/null 2>&1 && git status --porcelain 2>/dev/null | wc -l | awk '{if (\$1 > 0) print \" +\"\$1}')\
\[\033[00m\] \$ "
PS2='> '
PS3='? '