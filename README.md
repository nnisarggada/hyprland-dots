# Minimal Black and White [Hyprland](https://hyprland.org) Rice

## Details

- **OS:** [Arch Linux](https://archlinux.org/)
- **Shell:** [zsh 5.9](https://www.zsh.org/)
- **WM:** [Hyprland](https://hyprland.org)
- **Theme:** [Colloid-Dark](https://github.com/vinceliuice/Colloid-gtk-theme)
- **Icons:** [Papirus-Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **Terminal:** [Alacritty](https://github.com/alacritty/alacritty)
- **Browser:** [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- **Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Launcher:** [Wofi](https://hg.sr.ht/~scoopta/wofi)
- **Notifications / Control Center:** [SwayNC](https://github.com/ErikReider/SwayNotificationCenter)

## Installation Steps

### Step 1: Clone the Repository

```bash
git clone https://github.com/nnisarggada/hyprland-dots
cd hyprland-dots
```

### Step 2: Run the Installation Script

```bash
./install.sh
```

Follow the prompts during the installation process.

## Dependencies

### Required Programs

- [adwaita-dark](https://github.com/GNOME/adwaita-icon-theme)
- [alacritty](https://github.com/alacritty/alacritty)
- [avizo](https://github.com/misterdanb/avizo)
- [blueman](https://github.com/blueman-project/blueman)
- [bluez](https://git.kernel.org/pub/scm/bluetooth/bluez.git)
- [bluez-libs](https://git.kernel.org/pub/scm/bluetooth/bluez-libs.git)
- [bluez-utils](https://git.kernel.org/pub/scm/bluetooth/bluez-utils.git)
- [brightnessctl](https://github.com/Hummer12007/brightnessctl)
- [copyq](https://github.com/hluk/CopyQ)
- [evtest](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/input/evtest.c)
- [firefox](https://www.mozilla.org/en-US/firefox/new/)
- [flatpak](https://github.com/flatpak/flatpak)
- [git](https://git-scm.com/)
- [grimblast](https://aur.archlinux.org/packages/grimblast-git)
- [hyprpaper](https://github.com/hyprland/hyprpaper)
- [hyprpicker](https://github.com/hyprland/hyprpicker)
- [jq](https://github.com/stedolan/jq)
- [libnotify](https://developer.gnome.org/libnotify)
- [libva](https://github.com/intel/libva)
- [libva-nvidia-driver-git](https://aur.archlinux.org/packages/libva-nvidia-driver-git/)
- [light](https://github.com/haikarainen/light)
- [lxsession](https://sourceforge.net/projects/lxde/)
- [mlocate](https://fedorahosted.org/mlocate/)
- [ncdu](https://dev.yorhel.nl/ncdu)
- [network-manager-applet](https://github.com/NetworkManager/NetworkManager)
- [nodejs](https://github.com/nodejs/node)
- [noto-fonts-emoji](https://github.com/googlefonts/noto-fonts)
- [npm](https://www.npmjs.com/)
- [ntfs-3g](https://github.com/ntfs-3g/ntfs-3g)
- [nwg-look-bin](https://github.com/nwg-piotr/nwg-look)
- [pamixer](https://github.com/cdemoulins/pamixer)
- [papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/)
- [qt5-wayland](https://wiki.qt.io/QtWayland)
- [qt5ct](https://github.com/qt/qt5ct)
- [qt5-styleplugins](https://github.com/qt/qtstyleplugins)
- [qt6-wayland](https://wiki.qt.io/QtWayland)
- [swaylock-effects](https://github.com/mortie/swaylock-effects)
- [swaync](https://github.com/SirCmpwn/swaync)
- [sxiv](https://github.com/muennich/sxiv)
- [thunar](https://docs.xfce.org/xfce/thunar/start)
- [ttf-jetbrains-mono-nerd](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono)
- [ttf-joypixels](https://www.joypixels.com/)
- [unzip](https://github.com/nwihp/unzip)
- [udiskie](https://github.com/coldfix/udiskie)
- [udisks2](https://github.com/storaged-project/udisks)
- [waybar](https://github.com/Alexays/Waybar)
- [wireplumber](https://gitlab.freedesktop.org/pipewire/wireplumber)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
- [wofi](https://hg.sr.ht/~scoopta/wofi)
- [wofi-calc](https://github.com/KamataRyo/wofi-calc)
- [wofi-emoji](https://github.com/adi1090x/rofi)
- [xdg-desktop-portal-hyprland](https://github.com/hyprland/xdg-desktop-portal-hyprland)
- [xwaylandvideobridge-cursor-mode-2-git](https://aur.archlinux.org/packages/xwaylandvideobridge-cursor-mode-2-git/)
- [zathura](https://github.com/pwmt/zathura)
- [zathura-pdf-mupdf](https://pwmt.org/projects/zathura-pdf-mupdf/)
- [zsh](https://www.zsh.org/)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### Optional Programs

- [github-cli](https://github.com/cli/cli)
- [google-chrome](https://www.google.com/chrome/)
- [mission-center](https://github.com/hyprland/mission-center)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [neovim](https://github.com/neovim/neovim)

## Key Bindings

### General Actions

- **Mod Key**: SUPER (Windows key)
- **Mod + Return**: Launch Alacritty terminal
- **Mod + Q**: Close the active window
- **Mod + Space**: Toggle floating mode for the active window
- **Mod + F**: Toggle fullscreen for the active window
- **Mod + SHIFT + F**: Toggle fake fullscreen for the active window
- **Mod + C**: Center the active window
- **Alt + Space**: Launch application launcher (Wofi) in drun mode
- **Alt + SHIFT + Space**: Launch application launcher (Wofi) in run mode
- **Mod + Period**: Launch emoji picker (Wofi)
- **Mod + Comma**: Launch calculator (Wofi)
- **Mod + SHIFT + C**: Copy color using color picker
- **Mod + SHIFT + S**: Take a screenshot of the selected area
- **Mod + SHIFT + CTRL + S**: Take a screenshot of the entire screen
- **Mod + SHIFT + X**: Copy screenshot of entire screen to clipboard
- **Mod + SHIFT + CTRL + X**: Save screenshot of entire screen to ~/Pictures
- **Mod + SHIFT + O**: Toggle mute audio
- **Mod + SHIFT + M**: Toggle mute microphone
- **Mod + B**: Launch Librewolf
- **Mod + V**: Toggle CopyQ clipboard manager
- **Mod + SHIFT + MINUS**: Move active window to a special workspace
- **Mod + MINUS**: Toggle special workspace

### Window Management

- **Mod + Arrow Keys**: Move focus to different directions
- **Mod + Vim Keys (H, J, K, L)**: Move focus to different directions
- **Mod + SHIFT + Arrow Keys**: Move active window to different directions
- **Mod + SHIFT + Vim Keys (H, J, K, L)**: Move active window to different directions

### Workspace Management

- **Mod + [1-9]**: Switch to a specific workspace
- **Mod + SHIFT + [1-9]**: Move active window to a specific workspace
- **Mod + Scroll Up**: Cycle through workspaces to the right
- **Mod + Scroll Down**: Cycle through workspaces to the left

### Miscellaneous

- **Mod + E**: Open Thunar file manager
- **Mod + P**: Toggle pseudo-tile mode in dwindle layout
- **Mod + SHIFT + P**: Pin the active window

## Submaps and Resizing

- **Mod + R**: Enter submap for resizing
- **In Resize Submap**:
  - **Arrow Keys (and Vim Keys)**: Resize the active window in different directions
  - **Mod + Escape or Mod + R**: Return to the global submap

## Autostart

- The configuration includes an autostart script (`autostart.sh`) that runs once during startup. Customize this script to add applications or commands that should be launched automatically.

## Window Rules and Special Configurations

- The configuration includes specific rules for managing the behavior of certain windows, such as floating, sizing, or positioning.

## Gestures

- Gestures for workspace switching are enabled.

## Aesthetics

- Gaps, borders, shadows, and animations are configured for a visually pleasing experience.

## Additional Notes

- The configuration is extensively commented, providing explanations for various options and settings. Refer to the comments for detailed information.

## Author

This Hyprland rice configuration was crafted and customized by [Nnisarg Gada](https://nnisarg.in). Feel free to explore and modify the configuration to suit your preferences.

## Make it your own!

For any furthur customisations, please refer to the [Hyprland Wiki](https://wiki.hyprland.org) and community forums.

Happy customizing!
