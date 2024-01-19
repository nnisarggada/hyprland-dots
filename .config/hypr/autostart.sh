#!/usr/bin/env bash

hyprpaper &

avizo-service &

~/.config/waybar/start &
~/.config/swaync/start &

nm-applet &
blueman-applet &

lxsession &

copyq &

udiskie &

brightnessctl --restore

eval "sleep 2; hyprctl reload" &
