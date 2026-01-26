#!/usr/bin/fish

if not command -v yay > /dev/null
sudo pacman -S --needed --noconfirm base-devel git
set -l temp_dir (mktemp -d)
git clone https://aur.archlinux.org/yay.git $temp_dir
pushd $temp_dir
makepkg -si --noconfirm
popd
rm -rf $temp_dir
end

set packages \
    hyprland\
    kitty\
    wofi\
    nautilus\
    hyprpaper \
    hyprpicker \
    wofi \
    hypridle \
    hyprlock \
    xdg-desktop-portal-hyprland \
    hyprsysteminfo \
    hyprsunset \
    hyprpolkitagent \
    hyprland-qt-support \
    hyprqt6engine \
    hyprtoolkit \
    hyprcursor \
    hyprutils \
    hyprpwcenter\
    hyprlang \
    hyprshutdown\
    hyprwayland-scanner \
    aquamarine \
    hyprgraphics \
    hyprland-guiutils\
    pipewire\
    wireplumber\
    ttf-noto-nerd\
    grim\
    slurp\
    uwsm\
    libnewt

sudo pacman -Sy

for pkg in $packages
    if pacman -Si $pkg > /dev/null 2>&1
        echo "Installing $pkg..."
        sudo pacman -S --needed --noconfirm $pkg
    else
        echo ">> Warning: '$pkg' not in the official repositories."
end
end

yay -S --needed --noconfirm ashell

echo "Complete"