#!/usr/bin/env bash

picom -b

touchpad_click.sh
feh --bg-fill ~/Pictures/trees.jpg
xscreensaver -no-splash &

exec herbstluftwm --locked
