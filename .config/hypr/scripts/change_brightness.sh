#!/usr/bin/env bash

clamp_min () {
  if [[ "$1" -lt "1" ]]; then
    echo "1"
  else
    echo "$1"
  fi
}

b_mode="$1"

b_factor_step="10"
b_factor=$(clamp_min $(($(light | cut -f1 -d .) / $b_factor_step)))

if [[ $b_mode == "up" ]]; then
  brightnessctl set $b_factor%+
elif [[ $b_mode == "down" ]]; then
  brightnessctl set $b_factor%-
else
  notify-send "Hyprland Script (Brightness)" "You seem to be using this script wrong somewhere in your configuration!" -u critical
fi
