systemctl enable systemd-timesyncd.service --now
timedatectl set-ntp true
echo "[options]" | sudo tee -a /etc/pacman.conf
echo "ParallelDownloads = 10" | sudo tee -a /etc/pacman.conf
echo "[multilib]" | sudo tee -a /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf
pacman -Syu
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings
sudo pacman -S mesa xf86-video-intel vulkan-intel
git clone https://aur.archlinux.org/yay-git.git ~/yay-git
cd ~/yay-git
makepkg -si
cd
git clone https://github.com/pystardust/ani-cli.git
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli
sudo pacman -S hyprland waybar xdg-desktop-portal-hyprland qt5-wayland qt6-wayland thunar ttf-font-awesome ttf-fira-sans ttf-fira-code ttf-firacode-nerd fuse2 gtk4 libadwaita jq python-gobject blueman brightnessctl jdk-openjdk pavucontrol grim slurp noto-fonts-cjk fzf openssh cpupower tlp lib32-libx11 lib32-libxcomposite neovim pipewire pipewire-alsa pipewire-pulse wireplumber npm gdb vim flatpak ghostty yazi spotify-launcher obs-studio gnome-keyring steam steam-native-runtime wget unzip gum rsync figlet git stow ttf-meslo-nerd npm tree firefox
yay -S wlogout minecraft-launcher goverlay protonup-qt hyprshot hypridle starship hyprpicker-git btop noto-fonts noto-fonts-cjk noto-fonts-emoji shotwell catnap
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub app.zen_browser.zen
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
sudo systemctl enable cpupower.service
sudo systemctl start cpupower.service
sudo cpupower frequency-set --governor performance
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo systemctl enable tlp
sudo systemctl enable fstrim.timer
