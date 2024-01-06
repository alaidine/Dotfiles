# . "$HOME/.cargo/env"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export ZDOTDIR="$HOME/.config/zsh"
export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="st"

if [ -e /home/alaidine/.nix-profile/etc/profile.d/nix.sh ]; then . /home/alaidine/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "/home/alaidine/.local/share/cargo/env"
