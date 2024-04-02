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
