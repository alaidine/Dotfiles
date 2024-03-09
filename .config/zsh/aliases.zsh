alias vim='nvim'
alias g='git'
alias l='eza'
alias la='eza -a --icons'
alias ll='eza -l --icons'
alias lla='eza -la --icons'
alias nwmacs="emacs --no-window-system"
# alias emacs="emacsclient ./"
alias f='zi'
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

alias gz="git-fzf"
