#!/usr/bin/env bash



source ~/.config/hypr/lib.sh



run_hook pre &

swww init
swww img ~/.config/hypr/flat-wall.jpg -t grow --transition-pos top

~/.config/hypr/waybar/start
~/.config/hypr/swaync/start
~/.config/hypr/eww/start

nm-applet &
blueman-applet &

lxsession &

copyq &

brightnessctl --restore

eval "sleep 2; hyprctl reload" &

run_hook post &
