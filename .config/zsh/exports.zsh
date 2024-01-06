export PATH=/home/alaidine/.local/bin:$PATH
export PATH=/home/alaidine/.cargo/env:$PATH
export PATH=/home/alaidine/.cargo/bin:$PATH
export PATH=/home/alaidine/go/bin:$PATH
export PATH=/home/alaidine/bin:$PATH
export PATH=/home/alaidine/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH=$PATH:/usr/local/go/bin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Turso
export PATH="/home/alaidine/.turso:$PATH"

# Fly.io
export FLYCTL_INSTALL="/home/alaidine/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"

source /usr/share/nvm/nvm.sh
source /usr/share/nvm/install-nvm-exec
