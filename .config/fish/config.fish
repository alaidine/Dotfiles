alias g git

set -gx TERM xterm-256color

command -qv nvim && alias vim nvim

alias l eza
alias la 'eza -a --icons'
alias ll 'eza -l --icons'
alias lla 'eza -la --icons'
alias s 'sesh connect $(sesh list | fzf)'

alias dot '/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

set -gx EDITOR nvim

set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

set -gx PATH ~/.cargo/bin/ $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

source $HOME/.cargo/env.fish

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc
        nvm use
    else
    end
end

zoxide init fish | source

function starship_transient_prompt_func
  starship module character
end

starship init fish | source
enable_transience

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
