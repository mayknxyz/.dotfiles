# My Arch i3 Dotfiles

* * *

## Table of Contents

*   **About These Dotfiles**
*   **Installation & Setup (with GNU Stow)**
*   **Key Features & Customizations**
    *   **Included PackagesCore System Packages**
    *   **Applications & Tools**
*   **Notes & Reminders**
*   **Restoration Checklist**
*   **License**

* * *

## About These Dotfiles

This repository is my personal collection of configuration files for my Arch Linux setup running the i3 window manager. Its primary purpose is to maintain a consistent and efficient computing environment across installations and to serve as a reliable backup of my current configurations.

* * *

## Installation & Setup (with GNU Stow)

**Caution**: Always back up your existing configurations before applying these dotfiles.

This setup uses **GNU Stow** to manage symlinks, which makes deploying and organizing dotfiles straightforward.

1. **Install GNU Stow:** If Stow isn't already installed, grab it with pacman:
2. Bash
3.

```plain
sudo pacman -S stow
```

1. **Clone the repository:** Clone this repository into your home directory, typically as `~/.dotfiles`.
2. Bash
3.

```plain
git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
```

1. (Remember to replace `your-username` with the actual path if you've named your private repo differently.)
2. **Navigate to the dotfiles directory:**
3. Bash
4.

```plain
cd ~/.dotfiles
```

1. **Stow the dotfiles:** From within the `~/.dotfiles` directory, use `stow` for each configuration group. Each top-level directory in `~/.dotfiles` (e.g., `i3`, `zsh`, `nvim`) should correspond to a package you want to symlink.
2. For example:
3. Bash
4.

```plain
stow i3
stow zsh
stow nvim
stow alacritty # If you switch to Alacritty later# ... and so on for all your main configuration directories
```

1. Stow will create symbolic links from your home directory to the respective files and directories within `~/.dotfiles`. For instance, `~/.dotfiles/i3/.config/i3` will be symlinked to `~/.config/i3`.
2. **Install necessary packages:** After symlinking, you'll need the actual software packages. Refer to the "Included Packages" sections below. On Arch, use `pacman`:
3. Bash
4.

```cs
sudo pacman -Syu i3-wm [other-packages-as-needed]
```

1. **Reboot or re-login:** Log out and back in, or reboot your system, to ensure all changes take effect.

* * *

## Key Features & Customizations

These dotfiles provide:

*   **i3 Window Manager:** My personalized keybindings, status bar configuration (using i3status/polybar), and workspace layouts for a highly efficient tiling workflow.
*   **Zsh:** Custom prompt, aliases, functions, and plugin setup for a powerful and productive shell experience.
*   **Terminal Emulator (xterm):** Tailored appearance and behavior.
*   **Xorg Settings:** Specific configurations for display, input devices, and keyboard layouts.
*   **Appearance:** Cohesive theming and font selections across applications.

* * *

## Included Packages

This section lists the key packages and applications that these dotfiles are configured to work with. This isn't every single package on the system, but rather those essential for the intended setup and user experience.

### Core System Packages

These are the foundational packages, often part of a minimal Arch Linux and i3 setup, that provide the base environment for the dotfiles.

*   `xcb-util-xrm`: Utility for XCB, often used by i3 and other X applications.
*   `xdg-dbus-proxy`: Proxy for D-Bus to handle XDG Desktop Portal requests.
*   `xdg-desktop-portal` & `xdg-desktop-portal-gtk`: Integrates Flatpak/Snap applications with the desktop environment, specifically the GTK backend.
*   `xdg-utils`: Basic utilities for integrating applications with the desktop environment.
*   `xf86-input-libinput`: Input driver for Xorg, providing support for various input devices.
*   `xf86-video-amdgpu`, `xf86-video-ati`, `xf86-video-nouveau`, `xf86-video-vmware`: Xorg display drivers for various graphics cards.
*   `xfconf`: Xfce configuration system, sometimes used by other applications for shared settings.
*   `xkeyboard-config`: X Keyboard Extension data.
*   `xorg-fonts-encodings`: [X.Org](http://X.Org) fonts encoding data.
*   `xorg-server` & `xorg-server-common`: The X Window System display server.
*   `xorg-setxkbmap`: Utility to set the keyboard map.
*   `xorg-xauth`: X authentication utility.
*   `xorg-xdpyinfo`: Display information utility for X.
*   `xorg-xinit`: X Window System initializer.
*   `xorg-xkbcomp`: X Keyboard Extension compiler.
*   `xorg-xmodmap`: Utility for modifying keymaps and pointer button mappings.
*   `xorg-xprop`: Display window and font properties.
*   `xorg-xrandr`: X Resize, Rotate and Reflect Extension.
*   `xorg-xrdb`: X resource database utility.
*   `xorg-xset`: User preference utility for X.
*   `xorgproto`: [X.Org](http://X.Org) X11 Protocol and data headers.
*   `xss-lock`: A screen locker integration utility for i3.
*   `xterm`: A standard terminal emulator for the X Window System.
*   `xvidcore`: Xvid video codec.
*   `xxhash`: Extremely fast hash algorithm.
*   `xz`: General-purpose data compressor.
*   `yajl`: A fast JSON parsing library.
*   `zeromq`: High-performance asynchronous messaging library.
*   `zimg`: A high performance image processing library.
*   `zix`: Low-level utility functions.
*   `zlib`, `zlib-ng`: Data compression libraries.
*   `zram-generator`: Tool for creating ZRAM swap devices.
*   `zstd`: Fast real-time compression algorithm.

### Applications & Tools

These are my frequently used applications and command-line tools that often have their configurations managed by these dotfiles.

*   **1Password:** My password manager.
*   **ARandR:** Advanced RandR frontend for display configuration.
*   **Avahi Discover:** Service discovery browser.
*   **Bssh/Bvnc:** VNC/SSH related tools (client apps).
*   **btop:** Modern and feature-rich resource monitor.
*   **CameraCtrls (****`hu.irl.cameractrls`****):** Likely a webcam control application for specific hardware.
*   **Code OSS / VSCode:** My preferred code editor.
*   **Compton/Picom:** X compositor for visual effects and tear-free experience.
*   **Discord:** My communication platform.
*   **Feh:** Fast and lightweight image viewer.
*   **Flameshot:** My go-to screenshot tool.
*   **GCR Prompter/Viewer:** GNOME Cryptographic Keyring utilities.
*   **GIMP:** My image manipulation program.
*   **GKBD Keyboard Display:** For visual keyboard layout display.
*   **Ghostty (****`com.mitchellh.ghostty`****):** My preferred terminal emulator.
*   **Google Chrome:** My primary web browser.
*   **i3:** The i3 tiling window manager itself.
*   **LXAppearance:** GTK+ theme switcher.
*   **LXSession:** LXDE session manager components.
*   **Mousepad (****`org.xfce.mousepad`****):** Simple text editor.
*   **NetworkManager Applet (****`nm-applet`****):** NetworkManager notification area applet.
*   **NetworkManager Connection Editor (****`nm-connection-editor`****):** Graphical network connection editor.
*   **Neovim (****`nvim`****):** My main text editor for terminal-based tasks.
*   **Pavucontrol:** PulseAudio volume control.
*   **Pinentry-Qt/Qt5 (****`org.gnupg.pinentry-qt`****):** PIN or passphrase entry dialog for GnuPG.
*   **QV4l2/Qvidcap:** Qt-based V4L2 test applications for camera setup.
*   **Redshift/Redshift-GTK:** Adjusts the color temperature of my screen.
*   **Rofi:** My preferred window switcher, run launcher, and dmenu replacement.
*   **Thunar:** My primary file manager.
*   **Timeshift-GTK:** System restore utility for Linux.
*   **Upwork:** Freelance platform desktop application.
*   **Vim:** Classic text editor, often used for quick edits.
*   **Xarchiver:** Lightweight archive manager.
*   **ZED (****`dev.zed.Zed`****):** My other text editor (likely a different one than the `zed` package above, which might be a CLI tool).
*   **Zsh:** My highly configured Z shell environment.
*   **Zoom:** My video conferencing client.

* * *

## Notes & Reminders

*   **Wallpaper:** Remember to set the wallpaper (e.g., using `feh --bg-fill /path/to/my/wallpaper.jpg`) as it's not handled by Stow.
*   **GTK Themes/Icons:** After `lxappearance` is set up, make sure to apply the themes and icons.
*   **Font Installation:** Install all necessary fonts (Nerd Fonts, etc.) for proper display in i3status, terminal, etc.
*   **Hardware-Specific Configs:** Double-check configurations in `~/.config/i3/config` or Xorg files for any hardware-specific settings (e.g., monitor names for `xrandr`, touchpad settings) that might need adjustment on a new machine.
*   **Permissions:** Ensure scripts or executables have correct permissions (`chmod +x`).
*   **AUR Helpers:** If installing AUR packages, remember to use your preferred AUR helper (e.g., `yay`, `paru`).

* * *

## Restoration Checklist

When setting up a new Arch i3 system or reinstalling:

1. \[ \] Install Arch Linux base system.
2. \[ \] Install `git` and `stow`.
3. \[ \] Clone this dotfiles repository: `git clone` [`https://github.com/your-username/dotfiles.git`](https://github.com/your-username/dotfiles.git) `~/.dotfiles`
4. \[ \] `cd ~/.dotfiles`
5. \[ \] Run `stow` for all relevant packages (e.g., `stow i3`, `stow zsh`, `stow nvim`).
6. \[ \] Install **Core System Packages** listed above via `pacman`.
7. \[ \] Install **Applications & Tools** listed above via `pacman` or your AUR helper.
8. \[ \] Install desired fonts (Nerd Fonts, etc.).
9. \[ \] Set wallpaper (`feh --bg-fill ...`).
10. \[ \] Configure GTK theme and icons with `lxappearance`.
11. \[ \] Check `i3/config` for display output names (`xrandr`) and adjust if necessary.
12. \[ \] Test all keybindings and application launchers.
13. \[ \] Configure `nm-applet` if using NetworkManager.
14. \[ \] Import any necessary GnuPG keys or SSH keys.
15. \[ \] Log out and back in to ensure all settings are applied.
