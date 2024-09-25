#!/bin/bash

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd # Allows you to cd into directory merely by typing the directory name.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -s "$HOME/.config/git-completion.bash" ] && \. "$HOME/.config/git-completion.bash"
[ -s "$HOME/.proxy.bash" ] && \. "$HOME/.proxy.bash"
[ -s "$HOME/.config/herbstluftwm/herbstclient-completion.bash" ] && \. "$HOME/.config/herbstluftwm/herbstclient-completion.bash"

# pnpm
export PNPM_HOME="/home/alaidine/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Colors
RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"

function set_window_title() {
    local title
    if [[ "$PWD" == "$HOME" ]]; then
        title="~"
    else
        title="${PWD/#$HOME/\~}"
    fi
    echo -ne "\033]0;$title\007"
}

export PROMPT_COMMAND="set_window_title"
export PS1="${RED}[${YELLOW}\u${GREEN}@${BLUE}\h ${MAGENTA}\W${RESET}${RED}]${RESET}\$ "

if command -v zoxide &> /dev/null
then
    eval "$(zoxide init bash)"
fi
