# basic hyprland 
sudo pacman -S hyprland git kitty ghostty nvim hyprpaper hypridle hyprlock hyprsunset sddm wayland wayland-protocols libdrm thunar copyq --noconfirm

# yay install
pacman -S base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# enable sddm 
sudo systemctl enable sddm

# networking 
pacman -S networkmanager nm-connection-editor --noconfirm
systemctl enable NetworkManager
systemctl start NetworkManager
pacman -S network-manager-applet

# audio 
pacman -S pipewire pipewire-pulse pipewire-alsa wireplumber --noconfirm
systemctl --user enable pipewire pipewire-pulse wireplumber
systemctl --user start pipewire pipewire-pulse wireplumber
pacman -S pavucontrol --noconfirm 

# fonts
pacman -S ttf-dejavu ttf-font-awesome noto-fonts


