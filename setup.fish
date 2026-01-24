#!/usr/bin/fish
set packages \
    hyprland\
    kitty\
    wofi\
    nautilus\
    hyprpaper \
    hyprpicker \
    hyprlauncher \
    hypridle \
    hyprlock \
    xdg-desktop-portal-hyprland \
    hyprsysteminfo \
    hyprsunset \
    hyprpolkitagent \
    hyprland-qt-support \
    hyprqt6engine \
    hyprpwcenter \
    hyprshutdown \
    hyprtoolkit \
    hyprcursor \
    hyprutils \
    hyprlang \
    hyprwayland-scanner \
    aquamarine \
    hyprgraphics \
    hyprland-guiutils


sudo pacman -Sy

for pkg in $packages
    if pacman -Si $pkg > /dev/null 2>&1
        echo "Installing $pkg..."
        sudo pacman -S --needed --noconfirm $pkg
    else
        echo ">> Warning: '$pkg' not in the official repositories."
    end
end

echo "Complete"