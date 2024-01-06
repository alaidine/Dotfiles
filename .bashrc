#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

alias vim='nvim'
alias g='git'
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'
alias lla='exa -la'

# use multiple version of nvim
alias lazy-vim="NVIM_APPNAME=lazy-vim nvim"
alias doom-nvim="NVIM_APPNAME=doom-nvim nvim"
alias nvc="NVIM_APPNAME=nvchad nvim"

export PS1='$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo "[\[\e[1m\]\u@\h\[\e[0m\]: \w] [\[\e[34m\]$(git branch | grep ^* | sed s/\*\ //)\[\e[0m\]\
$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; if [ "$?" -ne "0" ]; then \
echo "\[\e[1;31m\]*\[\e[0m\]"; fi)] \$ "; else \
echo "[\[\e[1m\]\u@\h\[\e[0m\]: \w] \$ "; fi )'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "/home/alaidine/.local/share/cargo/env"

PATH=~/.console-ninja/.bin:$PATH