#!/usr/bin/env bash



source ~/.config/hypr/lib.sh



run_hook pre &

swww init

~/.local/bin/changewall

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
