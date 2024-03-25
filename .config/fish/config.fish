alias g git

set -gx TERM xterm-256color

command -qv nvim && alias vim nvim

alias l 'eza'
alias la 'eza -a --icons'
alias ll 'eza -l --icons'
alias lla 'eza -la --icons'

alias config '/usr/bin/git --git-dir=$HOME/Dotfiles --work-tree=$HOME'

set -gx EDITOR nvim

set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

set -gx PATH ~/.cargo/bin/ $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

zoxide init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
