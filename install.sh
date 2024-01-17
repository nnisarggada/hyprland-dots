#!/bin/bash

mkdir ~/Pictures
mkdir ~/Music
mkdir ~/Downloads
mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/.local
mkdir ~/.local/bin

if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay-bin
	cd yay-bin
	makepkg -si
	cd ../
	yay && rm -rf yay-bin
else
	echo "YAY already installed."
	yay
fi

programs=("qt5-wayland" "libva" "libva-nvidia-driver-git" "flatpak" "adwaita-dark" "wl-clipboard" "wireplumber" "pamixer" "qt5-wayland" "qt6-wayland" "evtest" "less" "wget" "ncdu" "bluez" "bluez-libs" "bluez-utils" "git" "github-cli" "papirus-icon-theme" "pavucontrol" "blueman" "qt5ct" "qt5-styleplugins" "unzip" "zip" "firefox" "zsh" "alacritty" "thunar" "htop" "neofetch" "brightnessctl" "light" "ntfs-3g" "udisks2" "udiskie" "gvfs" "ttf-ms-fonts" "neovim" "nodejs" "npm" "lua" "python-pillow" "zathura" "ttf-joypixels" "ttf-jetbrains-mono-nerd" "zathura-pdf-mupdf" "python-pip" "mlocate" "zsh-syntax-highlighting" "libnotify" "jq" "sxiv" "webapp-manager" "waybar" "wofi" "wofi-emoji" "wofi-calc" "notification-daemon" "swaync" "avizo" "noto-fonts-emoji" "lxsession" "grimblast-git" "nwg-look-bin" "bibata-cursor-theme" "swaylock-effects" "xdg-desktop-portal-hyprland" "hyprpaper" "network-manager-applet" "copyq" "hyprpicker-git" "xwaylandvideobridge-cursor-mode-2-git" "mission-center" "google-chrome")

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
sudo cp .gtkrc-2.0 ~/

hyprpaper &
sudo systemctl enable bluetooth

gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'
gsettings set org.gnome.desktop.interface document-font-name 'Cantarell 12'
gsettings set org.gnome.desktop.interface font-name 'Cantarell 12'
gsettings set org.gnome.desktop.interface monospace-font-name 'Source Code Pro 12'
gsettings set org.gnome.desktop.interface gtk-theme 'Colloid-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

sudo cp etc/environment /etc/

sudo chown $USER ~/ -R
chsh -s /usr/bin/zsh
