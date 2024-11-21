# Minimal Gruvbox [Hyprland](https://hyprland.org) Rice

## Details

- **OS:** [Arch Linux](https://archlinux.org/)
- **Shell:** [zsh 5.9](https://www.zsh.org/)
- **WM:** [Hyprland](https://hyprland.org)
- **Theme:** [Gruvbox Dark](https://github.com/jmattheis/gruvbox-dark-gtk)
- **Icons:** [Gruvbox-Dark-Icons](https://github.com/jmattheis/gruvbox-dark-icons-gtk)
- **Cursor:** [Bibata Modern Ice](https://github.com/ful1e5/Bibata_Cursor)
- **Terminal:** [Alacritty](https://github.com/alacritty/alacritty)
- **Browser:** [Librewolf](https://librewolf.net/)
- **Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Launcher:** [Bemenu (Dmenu for Wayland)](https://github.com/Cloudef/bemenu)
- **Notifications:** [Dunst](https://dunst-project.org/)

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

## Key Bindings

### General Actions

- **Mod Key**: SUPER (Windows key)
- **Mod + Return**: Launch Alacritty terminal
- **Mod + Q**: Close the active window
- **Mod + Space**: Toggle floating mode for the active window
- **Mod + F**: Toggle fullscreen for the active window
- **Mod + C**: Center the active window
- **Mod + D**: Launch bemenu (dmenu) in drun mode
- **Mod + SHIFT + C**: Copy color using color picker
- **Mod + SHIFT + S**: Take a screenshot of the selected area
- **Mod + SHIFT + CTRL + S**: Save screenshot of the selected area to ~/pix/ss/
- **Mod + SHIFT + X**: Copy screenshot of entire screen to clipboard
- **Mod + SHIFT + CTRL + X**: Save screenshot of entire screen to ~/pix/ss/
- **Mod + SHIFT + O**: Toggle mute audio
- **Mod + SHIFT + M**: Toggle mute microphone
- **Mod + B**: Launch Librewolf
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
- **Mod + CTRL + P**: Pin the active window

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
