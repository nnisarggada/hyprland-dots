#!/bin/bash

mkdir ~/Pictures
mkdir ~/Music
mkdir ~/Downloads
mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/.local
mkdir ~/.local/bin


echo ""
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
echo ""

required_programs=("adwaita-dark" "alacritty" "blueman" "bluez" "bluez-libs" "bluez-utils" "brightnessctl" "copyq" "evtest" "flatpak" "git" "hyprpaper" "hyprpicker-git" "jq" "libnotify" "librewolf-bin" "libva" "libva-nvidia-driver-git" "light" "lxsession" "mlocate" "ncdu" "network-manager-applet" "nodejs" "noto-fonts-emoji" "ntfs-3g" "nwg-look-bin" "pamixer" "papirus-icon-theme" "pavucontrol" "qt5-wayland" "qt5ct" "qt5-styleplugins" "qt6-wayland" "swaylock-effects" "swaync" "sxiv" "thunar" "ttf-jetbrains-mono-nerd" "ttf-joypixels" "unzip" "udiskie" "udisks2" "waybar" "wireplumber" "wl-clipboard" "wofi" "wofi-calc" "wofi-emoji" "xdg-desktop-portal-hyprland" "xwaylandvideobridge-cursor-mode-2-git" "zathura" "zathura-pdf-mupdf" "zsh" "zsh-syntax-highlighting")

optional_programs=("github-cli" "google-chrome" "mission-center" "neofetch" "neovim")

echo ""
echo "Checking and installing required programs..."
for program in $(echo "${required_programs[@]}" | tr ' ' '\n' | sort); do
	if ! yay -Q "$program" >/dev/null 2>&1; then
		echo "Installing $program..."
		yay -S --noconfirm --needed "$program"
		echo "$program installed successfully!"
	else
		echo "$program is already installed."
	fi
done
echo ""

echo ""
echo "Checking and installing optional programs..."
for program in "${optional_programs[@]}"; do
		if ! yay -Q "$program" >/dev/null 2>&1; then
      read -p "Do you want to install $program? (Y/n): " install_optional
      if [[ ! $install_optional =~ ^[nN]$ ]]; then
        echo "Installing $program..."
        yay -S --noconfirm --needed "$program"
        echo "$program installed successfully!"
      else
        echo "Skipping $program installation."
      fi
		else
			echo "$program is already installed."
    fi
done
echo ""

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

sudo cp -r etc/* /etc/

sudo chown $USER ~/ -R
chsh -s /usr/bin/zsh
