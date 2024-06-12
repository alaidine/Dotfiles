#                      $$\
#                      $$ |
#  $$$$$$$$\  $$$$$$$\ $$$$$$$\   $$$$$$\   $$$$$$$\
#  \____$$  |$$  _____|$$  __$$\ $$  __$$\ $$  _____|
#    $$$$ _/ \$$$$$$\  $$ |  $$ |$$ |  \__|$$ /
#   $$  _/    \____$$\ $$ |  $$ |$$ |      $$ |
#  $$$$$$$$\ $$$$$$$  |$$ |  $$ |$$ |      \$$$$$$$\
#  \________|\_______/ \__|  \__|\__|       \_______|
#
#
#

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

alias vim="nvim"
alias ll="eza --grid --long --icons"
alias la="eza --all --grid --long --icons"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"
plug "chivalryq/git-alias"

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Disable the cursor style feature
ZVM_CURSOR_STYLE_ENABLED=false

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/alaidine/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH=$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH
