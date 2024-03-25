# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f "$ZDOTDIR/aliases.zsh" ] && source "$ZDOTDIR/aliases.zsh"
[ -f "$ZDOTDIR/exports.zsh" ] && source "$ZDOTDIR/exports.zsh"

export ZSH="$ZDOTDIR/ohmyzsh"

# Check if ohmyzsh is installed, if not, install it
if [ ! -d "$ZSH" ]; then
  echo "Oh My Zsh is not installed. Installing..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Check if zsh-autosuggestions plugin is installed, if not, install it
if [ ! -d "$ZSH/custom/plugins/zsh-autosuggestions" ]; then
  echo "zsh-autosuggestions plugin is not installed. Installing..."
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-autosuggestions
fi

# Check if zsh-syntax-highlighting plugin is installed, if not, install it
if [ ! -d "$ZSH/custom/plugins/zsh-syntax-highlighting" ]; then
  echo "zsh-syntax-highlighting plugin is not installed. Installing..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-syntax-highlighting
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_HIGHLIGHT_MAXLENGTH=512
plugins=(
  git
  vi-mode
  zoxide
  eza
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  vscode
  fzf
)

DISABLE_FZF_AUTO_COMPLETION="false"
DISABLE_FZF_KEY_BINDINGS="false"

HISTFILE=$ZDOTDIR/.zsh_history

source $ZSH/oh-my-zsh.sh

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

bindkey '^H' backward-kill-word

bindkey '^f' autosuggest-accept

function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
