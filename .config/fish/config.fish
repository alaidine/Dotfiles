if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

function starship_transient_rprompt_func
  starship module time
end
starship init fish | source
enable_transience

if test -f ~/.cache/ags/user/colorschemes/sequences
    cat ~/.cache/ags/user/colorschemes/sequences
end

alias g git

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

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

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
