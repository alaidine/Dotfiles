#!/usr/bin/env bash

function herbstfluft() {
    picom -b
    touchpad_click.sh
    feh --bg-fill ~/Pictures/trees.jpg
    xautolock -time 10 -locker slock &
    exec herbstluftwm --locked
}

function plasma() {
    export DESKTOP_SESSION=plasma
    exec startplasma-x11
}

function mate() {
    exec mate-session
}

function xfce() {
    picom -b
    exec startxfce4
}

function suckless() {
    picom -b
    touchpad_click.sh
    feh --bg-fill ~/Pictures/trees.jpg
    xautolock -time 10 -locker slock &
    export PATH=$PATH:~/.local/bin/statusbar
    dwmblocks &
    exec dwm
}

herbstfluft
