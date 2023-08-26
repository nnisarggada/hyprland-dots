#!/usr/bin/env bash

swww init
swww img ~/Pictures/Wallpapers/what-will-you-say-today.jpg -t grow --transition-pos top

~/.config/hypr/waybar/start
~/.config/hypr/swaync/start

nm-applet &
blueman-applet &

lxsession &

copyq &

udiskie &

brightnessctl --restore

eval "sleep 2; hyprctl reload" &
