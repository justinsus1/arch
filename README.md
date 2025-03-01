# My shitty dotfiles

A configuration of Hyprland for Arch Linux based distributions.

## If using zen

```shell
linux-zen-headers
```

## Prep

```shell
systemctl enable systemd-timesyncd.service --now
timedatectl set-ntp true
```

```shell
echo "[options]" | sudo tee -a /etc/pacman.conf
echo "ParallelDownloads = 10" | sudo tee -a /etc/pacman.conf
echo "[multilib]" | sudo tee -a /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf

pacman -Syu
```

## If nvidia

```shell
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings
```

## If intel

```shell
sudo pacman -S mesa xf86-video-intel vulkan-intel
```

## Actually installing shit

```shell
git clone https://aur.archlinux.org/yay-git.git ~/yay-git
cd ~/yay-git
makepkg -si
cd
```
```shell
git clone https://github.com/pystardust/ani-cli.git
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli
```

```shell
sudo pacman -S hyprland waybar xdg-desktop-portal-hyprland qt5-wayland qt6-wayland hyprlock thunar ttf-font-awesome ttf-fira-sans ttf-fira-code ttf-firacode-nerd fuse2 gtk4 libadwaita jq python-gobject blueman brightnessctl jdk-openjdk pavucontrol grim slurp noto-fonts-cjk fzf gamemode mangohud openssh cpupower tlp lib32-libx11 lib32-libxcomposite lib32-mangohud neovim fastfetch pipewire pipewire-alsa pipewire-pulse wireplumber npm gdb vim flatpak ghostty yazi spotify-launcher obs-studio gnome-keyring steam steam-native-runtime wget unzip gum rsync figlet git stow qt5ct
```

```shell
yay -S wlogout minecraft-launcher goverlay protonup-qt hyprshot hypridle starship hyprpicker-git btop noto-fonts noto-fonts-cjk noto-fonts-emoji shotwell swww cava catnap
```

```shell
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub app.zen_browser.zen
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref
```

```shell
curl -fsSL https://raw.githubusercontent.com/Axenide/Ax-Shell/main/install.sh | bash
curl -fsSL https://ollama.com/install.sh | sh
bash -c "$(curl -sLo- https://superfile.netlify.app/install.sh)"
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
```

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Setting shit up

```shell
sudo systemctl enable cpupower.service
sudo systemctl start cpupower.service

sudo cpupower frequency-set --governor performance

sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo systemctl enable tlp
sudo systemctl enable fstrim.timer
```
