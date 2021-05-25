#!bin/bash
# Secondary script that will install the rest of my applictions

# Install status bar, application launcher, wallpaper manager, color-scheme manager, file manager
yay polybar rofi nitrogen wpgtk-git nnn

# Install shell and custom prompt
sudo pacman -S fish
curl -fsSL https://starship.rs/install.sh | bash

# Install theme manager, gtk theme, icon theme, cursor theme, ui font, terminal font
yay lxappearance nordic-theme-git qogir-icon-theme mcmojave-cursors ttf-roboto ttc-iosevka-ss04

# Install basic apps (editors, browser, etc.)
yay neovim code brave-bin spotify discord