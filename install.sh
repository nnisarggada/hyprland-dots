#!/bin/bash

mkdir ~/Desktop
mkdir ~/Pictures
mkdir ~/Music
mkdir ~/Downloads
mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/.local
mkdir ~/.local/bin

if ! command -v yay &> /dev/null; then
  git clone https://aur.archlinux.org/yay-bin
  cd yay-bin
  makepkg -si
  cd ../
  yay && rm -rf yay-bin
else
  echo "YAY already installed."
  yay
fi

programs=("sddm" "sddm-sugar-candy-git" "wl-clipboard" "wireplumber" "qt5-wayland" "qt6-wayland" "evtest" "less" "wget" "ncdu" "bluez" "bluez-libs" "bluez-utils" "git" "github-cli" "papirus-icon-theme" "pavucontrol" "blueman" "qt5ct" "qt5-styleplugins" "unzip" "zip" "firefox" "zsh" "alacritty" "thunar" "htop" "neofetch" "brightnessctl" "light" "ntfs-3g" "udisks2" "udiskie" "gvfs" "ttf-ms-fonts" "neovim" "nodejs" "npm" "lua" "python-pillow" "zathura" "ttf-joypixels" "ttf-jetbrains-mono-nerd" "zathura-pdf-mupdf" "python-pip" "mlocate" "zsh-syntax-highlighting" "libnotify" "jq" "sxiv" "webapp-manager" "waybar-hyprland-git" "wofi" "wofi-emoji" "wofi-calc" "notification-daemon" "swaync" "noto-fonts-emoji" "lxsession" "grimblast-git" "nwg-look-bin" "bibata-cursor-theme" "gtklock" "xdg-desktop-portal-hyprland" "swww" "network-manager-applet" "copyq" "hyprpicker-git" "xwaylandvideobridge-cursor-mode-2-git" "mission-center")

for program in "${programs[@]}"; do
    if ! yay -Q "$program" >/dev/null 2>&1; then
        echo "Installing $program..."
        yay -S --noconfirm --needed "$program"
        echo "$program installed successfully!"
    else
        echo "$program is already installed."
    fi
done


sudo cp -r .config ~/
sudo cp -r .themes ~/
sudo cp -r .local ~/
sudo cp -r .fonts ~/
sudo cp -r Pictures ~/
sudo cp -r Music ~/
sudo cp .zshrc ~/

sudo cp environment /etc/
sudo cp sddm.conf /usr/lib/sddm/sddm.conf.d/default.conf

sudo chown $USER ~/ -R
chsh -s /usr/bin/zsh
