
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export EDITOR="nvim"
export TERMINAL="wezterm"
export PATH=$HOME/.local/bin/:$PATH
export PATH=/home/alaidine/.local/bin/statusbar/:$PATH
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

. "$HOME/.cargo/env"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

[[ -f ~/.bashrc ]] && . ~/.bashrc
