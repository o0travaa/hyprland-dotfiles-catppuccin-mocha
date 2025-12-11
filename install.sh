#!/usr/bin/env bash
if ! command -v yay >/dev/null 2>&1; then
  echo "Error. yay not found."
  exit 1
fi

echo "Installing paсkages..."
sudo pacman -S --needed hyprland kitty waybar ttf-jetbrains-mono wofi nautilus
yay -S --needed ttf-jetbrains-mono-nerd catppuccin-theme-gtk-mocha

echo "Copying..."
cp -r ./config/hypr   ~/.config/hypr
cp -r ./config/waybar ~/.config/waybar
cp -r ./config/kitty  ~/.config/kitty
cp -r ./config/gtk-3.0 ~/.config/gtk-3.0
cp -r ./config/gtk-4.0 ~/.config/gtk-4.0
