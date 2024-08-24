# Some aliases
alias sdn="sudo shutdown now"
alias e="$EDITOR"
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="$EDITOR"
alias f="vifm"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias ref="shortcuts >/dev/null ; source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias mpv="mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)"
alias x="sxiv -ft *"
alias lsp="pacman -Qett --color=always | less"
alias pt="python -m unittest"

# Adding color
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -i" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio
alias YT="youtube-viewer"

if ! command -v eza &> /dev/null
then
    alias ll='ls -l -hN --color=auto --group-directories-first'
    alias la='ls -l --all -hN --color=auto --group-directories-first'
else
    alias ll='eza --long --icons --grid'
    alias la='eza --long --icons --grid --all'
fi

alias nv='nvim'
alias battery='cat /sys/class/power_supply/BAT1/capacity'
alias cfg="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -hN --color=auto --group-directories-first'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep="grep --color=auto"
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}
se() { du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf | xargs  -r $EDITOR ;}
sv() { vcopy "$(du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf)" ;}
vf() { fzf | xargs -r -I % $EDITOR % ;}
sghq() { sesh connect $(ghq list | awk '{printf "'$(ghq root)'/"; print}' | fzf) ;}
fghq() { cd $(ghq list | awk '{printf "'$(ghq root)'/"; print}' | fzf) ;}
