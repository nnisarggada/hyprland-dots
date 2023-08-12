#!/bin/bash

mkdir ~/Desktop
mkdir ~/Pictures
mkdir ~/Music
mkdir ~/Downloads
mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/.local
mkdir ~/.local/bin

yay -S --overwrite --needed --noconfirm ncdu bluez bluez-libs bluez-utils git github-cli papirus-icon-theme pavucontrol blueman qt5ct qt5-styleplugins unzip zip firefox zsh alacritty thunar htop neofetch brightnessctl light ntfs-3g udisks2 gvfs ttf-ms-fonts neovim nodejs npm lua python-pillow zathura ttf-joypixels ttf-jetbrains-mono-nerd zathura-pdf-mupdf python-pip mlocate zsh-syntax-highlighting libnotify jq sxiv webapp-manager cliphist waybar-hyprland-git wofi wofi-emoji notification-daemon swaync noto-fonts-emoji lxsession grimblast-git nwg-look-bin yad sox mint-themes sweet-gtk-theme-dark bibata-cursor-theme gtklock eww-wayland xdg-desktop-portal-hyprland swww

sudo cp -r .config/* ~/.config/
sudo cp -r .local/bin/* ~/.local/bin/
sudo cp -r .fonts/* ~/.fonts/
sudo cp -r Pictures/* ~/Pictures/
sudo cp -r Music/* ~/Music/
sudo cp .zshrc ~/

sudo cp environment /etc/

sudo chown $USER ~/ -R
chsh -s /usr/bin/zsh
