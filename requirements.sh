# basic hyprland
sudo pacman -S hyprland git kitty ghostty nvim hyprpaper hypridle hyprlock hyprsunset sddm wayland waybar wayland-protocols libdrm thunar copyq --noconfirm

# yay install
pacman -S base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# enable sddm
sudo systemctl enable sddm

# networking
sudo pacman -S networkmanager nm-connection-editor --noconfirm
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
sudo pacman -S network-manager-applet --noconfirm

# audio
sudo pacman -S pipewire pipewire-pulse pipewire-alsa wireplumber --noconfirm
sudo systemctl --user enable pipewire pipewire-pulse wireplumber
sudo systemctl --user start pipewire pipewire-pulse wireplumber
sudo pacman -S pavucontrol --noconfirm

# fonts
pacman -S ttf-dejavu ttf-font-awesome noto-fonts --noconfirm
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra --no-confirm
yay -S nerd-fonts-complete --noconfirm
sudo fc-cache -fv

# tmux
sudo pacman -S tmux --noconfirm
git clone --single-branch https://github.com/gpakosz/.tmux.git
mkdir -p ~/.config/tmux
ln -s .tmux/.tmux.conf ~/.config/tmux/tmux.conf
cp .tmux/.tmux.conf.local ~/.config/tmux/tmux.conf.local

# additional programs
sudo pacman -S --noconfirm mpv sudo pacman -S xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

# set theme
systemctl --user daemon-reload
systemctl --user restart xdg-desktop-portal.service xdg-desktop-portal-hyprland.service xdg-desktop-portal-gtk.service
