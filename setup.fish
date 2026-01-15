#!/usr/bin/fish

set PKGS hyprland hyprpaper kitty wofi nautilus

for pkg in $PKGS
    echo "Installing $pkg"
    sudo pacman -S --noconfirm --needed $pkg
end
echo "Iterating over package list done"
