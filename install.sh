#!bin/bash
# Basic bash script to help install my arch linux packages/applications

# Install video drivers and X11 dependencies
sudo pacman -S --noconfirm xorg xorg-init

# Install git, compositor
sudo pacman -S --noconfirm git picom

# Install the AUR helper - yay
git clone https://aur.archlinux.org/yay-git.git
sudo pacman -S base-devel
cd yay-git
makepkg -si

# Install windows manager, terminal
yay i3-gaps-rounded-git alacritty

# Run startx (ENSURE .xinitrc IS IN HOME FOLDER AND LOGGED IN AS USER)
startx