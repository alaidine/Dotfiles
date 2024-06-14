#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

alias vim='nvim'
alias ll='eza --long --icons --grid'
alias la='eza --long --icons --grid --all'

source ~/Git/ble.sh/out/ble.sh

eval "$(zoxide init bash)"
eval "$(starship init bash)"

function set_win_title() {
	echo -ne "\033]0; $(basename "$PWD") \007"
}
starship_precmd_user_func="set_win_title"

bleopt prompt_ps1_final='$(starship module character)'
