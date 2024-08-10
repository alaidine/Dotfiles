# .bash_profile

export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/local/go/bin
export TERMINAL="wezterm"
export EDITOR="vim"

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

. "$HOME/.cargo/env"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi
