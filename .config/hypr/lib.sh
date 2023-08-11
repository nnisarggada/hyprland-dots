#!/usr/bin/env bash

run_hook () {
	$HOME/.hyprland_rice/autostart_$1
}

eww-rice () {
	eww --config ~/.config/hypr/eww/ $*
}
