#!/usr/bin/env bash

picom -b

touchpad_click.sh
feh --bg-fill ~/Pictures/trees.jpg
xautolock -time 10 -locker slock &

exec herbstluftwm --locked
