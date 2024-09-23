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


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/alaidine/.opam/opam-init/init.sh' && . '/home/alaidine/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration
