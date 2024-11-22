#!/usr/bin/env bash

###################################################
#               _                       _         #
#              (_)                     (_)        #
#   _ __  _ __  _ ___  __ _ _ __ __ _   _ _ __    #
#  | '_ \| '_ \| / __|/ _` | '__/ _` | | | '_ \   #
#  | | | | | | | \__ \ (_| | | | (_| |_| | | | |  #
#  |_| |_|_| |_|_|___/\__,_|_|  \__, (_)_|_| |_|  #
#                                __/ |            #
#                               |___/             #
###################################################

~/.local/bin/batmon -n -L 20 -s ~/.local/share/sounds/notification.ogg -v 75 &
~/.local/bin/drink_water &

bluetoothctl power off &

hyprpaper &
hypridle &

~/.config/waybar/start &

lxsession &

udiskie &

brightnessctl -r &

pactl unload-module module-echo-cancel &&
pactl load-module module-echo-cancel aec_method=webrtc source_name=echocancel sink_name=echocancel1 &&
pactl set-default-source echocancel &&
pactl set-default-sink echocancel1 &

eval "sleep 2; hyprctl reload" &
