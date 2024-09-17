export TERMINAL="wezterm"
export EDITOR="vim"

if [ -f "$HOME/.cargo/env" ]; then
. "$HOME/.cargo/env"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/go/bin" ]; then
    PATH="$HOME/go/bin:$PATH"
fi

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi

if [ -f "$HOME/.bashrc" ]; then
. "$HOME/.bashrc"
fi
