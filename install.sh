#!/bin/bash

mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/.local
mkdir ~/.local/bin
mkdir ~/desk
mkdir ~/dl
mkdir ~/dox
mkdir ~/pub
mkdir ~/vids
mkdir ~/work
mkdir ~/music
mkdir ~/tmplts

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

required_programs=("adwaita-dark" "foot" "blueman" "bluez" "bluez-libs" "bluez-utils" "brightnessctl" "evtest" "firefox" "flatpak" "git" "grimblast" "hypridle" "gtklock" "hyprpaper" "hyprpicker" "jq" "libnotify" "libva" "libva-nvidia-driver-git" "light" "lxsession" "mlocate" "ncdu" "network-manager-applet" "nodejs" "noto-fonts-emoji" "npm" "ntfs-3g" "nwg-look-bin" "pamixer" "gruvbox-dark-icons-gtk" "pavucontrol" "qt5-wayland" "qt5ct" "qt5-styleplugins" "qt6-wayland" "sxiv" "thunar" "ttf-jetbrains-mono-nerd" "ttf-joypixels" "unzip" "zip" "udiskie" "udisks2" "waybar" "wireplumber" "wl-clipboard" "xdg-desktop-portal-hyprland" "xwaylandvideobridge-cursor-mode-2-git" "zathura" "zathura-pdf-mupdf" "zsh" "zsh-syntax-highlighting" "github-cli" "google-chrome" "mission-center" "neofetch" "neovim" "v4l2loopback-dkms" "onlyoffice-bin" "yt-dlp" "silicon" "dash" "lua" "python-pip" "man" "ripgrep" "linux-headers" "p7zip" "auto-cpufreq" "mpd" "mpv" "rsync" "gvfs" "pass" "bemenu-wayland" "colloid-gruvbox-gtk-theme-git" "ttf-courier-prime")

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

sudo cp -r .config ~/
sudo cp -r .local ~/
sudo cp -r pix ~/
sudo cp .zshrc ~/
sudo cp .gtkrc-2.0 ~/

sudo cp -r xorg.conf.d /etc/X11/

mkdir pix/ss

sed -i "s/nnisarggada/$USER/g" ~/.config/wal/templates/dunstrc

sudo chown $USER ~/ -R

hyprpaper &
sudo systemctl enable bluetooth
systemctl --user enable mpd
sudo modprobe v4l2loopback

sudo npm i -g pnpm
pnpm setup
source ~/.zshrc
pnpm i -g pnpm
pnpm i -g pocketnaut
pnpm i -g better-commits

sudo auto-cpufreq --install

gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface document-font-name 'Cantarell 12'
gsettings set org.gnome.desktop.interface font-name 'Cantarell 12'
gsettings set org.gnome.desktop.interface monospace-font-name 'Courier Prime Pro 12'
gsettings set org.gnome.desktop.interface gtk-theme 'Colloid-Green-Dark-Gruvbox'
gsettings set org.gnome.desktop.interface icon-theme 'gruvbox-dark-icons-gtk'

sudo cp -r etc/* /etc/

sudo rm -rf /bin/sh
sudo ln -s dash /bin/sh
chsh -s /usr/bin/zsh
