if [ -f ~/.bashrc_custom ] ;then
    source ~/.bashrc_custom
fi

eval "$(starship init zsh)"

# -----------------------------------------------------
# Fastfetch if in Hyprland
# -----------------------------------------------------
echo ""
echo ""
catnap

alias ml4w-hyprland='~/.config/ml4w/apps/ML4W_Hyprland_Settings-x86_64.AppImage'
alias l='ls -la'
alias cls='clear'
alias wifi='nmtui'
alias bluetooth='blueman-manager'
alias audio='pavucontrol'
alias mc='minecraft-launcher'
# alias surfshark='sudo openvpn ~/surfshark/au-syd.prod.surfshark.comsurfshark_openvpn_udp.ovpn'
alias fuck='brightnessctl set 1%'
alias edit='nvim ~/.zshrc'
alias check='sudo pacman -Syu; yay -Syu'
alias shutdown='shutdown now'
alias chat='ollama run deepseek-r1'
alias vpn-jp='sudo wg-quick up wg0'
alias disconnect-jp='sudo wg-quick down wg0'
alias obs='#!/bin/bash
export QT_QPA_PLATFORM=wayland
obs'

export __NV_PRIME_RENDER_OFFLOAD=1
export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export __VK_LAYER_NV_optimus=NVIDIA_only
export QT_QPA_PLATFORM=xcb


export PATH=$PATH:/home/justin_sus1/.spicetify
