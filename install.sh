# Update all packages
sudo pacman -Syyu

# Creating symlinks for dotfiles
cd ~
sudo pacman -S --needed rust go stow fastfetch lldb gdb
mkdir -p .config Github
cd .config
touch hello.txt
cd ~/.dotfiles
stow .

cd ~/.config
rm hello.txt

# Install aur helper
cd ~/Github
git clone https://aur.archlinux.org/paru-git.git
cd paru-git
makepkg -si
cd src/paru
cargo clean

# Install Hyprland
cd ~
paru -S --needed hyprland-git xdg-desktop-portal-hyprland-git sddm noto-fonts noto-fonts-cjk noto-fonts-emoji nautilus rofi brightnessctl ghostty neovim-git

# Install pipewire
sudo pacman -S --needed pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber pavucontrol

# Install user packages
paru -S --needed brave-bin profile-sync-daemon-brave zen-browser-bin hyprpaper-git hypridle-git hyprlock-git nwg-look hyprpicker-git grimblast-git waybar python-pywal16 loupe dunst zed gnome-disk-utility cliphist polkit-gnome eslint clang rust-analyzer ttf-font-awesome visual-studio-code-bin zsh bat fzf zoxide python-pip vlc ffmpeg python-pywalfox onevpl-intel-gpu adw-gtk-theme qt5ct qt6ct qt5-wayland qt6-wayland kvantum kvantum-qt5 eza telegram-desktop wal-telegram-git btop unzip satty firefox-developer-edition less spotify jdk-openjdk

# Install nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node

# Install bun js
curl -fsSL https://bun.sh/install | sh

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -




# Change default shell to zsh
chsh -s /usr/bin/zsh

# Cache clean up
paru -Sccc

# Setup sddm
sudo systemctl enable sddm
sudo systemctl set-default graphical.target

# Start Hyprland
Hyprland
