if [ -f ~/.bashrc_custom ] ;then
    source ~/.bashrc_custom
fi

eval "$(starship init zsh)"

# -----------------------------------------------------
# Fastfetch if in Hyprland
# -----------------------------------------------------

echo "fuck"
echo ""
echo ""
catnap

alias l='ls -la'
alias cls='clear'
alias wifi='nmtui'
alias bluetooth='blueman-manager'
alias audio='pavucontrol'
alias mc='minecraft-launcher'
alias fuck='brightnessctl set 1%'
alias edit='nvim ~/.zshrc'
alias check='sudo pacman -Syu; yay -Syu'
alias shutdown='shutdown now'
alias chat='ollama run deepseek-r1'
alias vpn='sudo wg-quick up wg0'
alias dis='sudo wg-quick down wg0'
alias audio='systemctl --user restart pipewire'

export PATH=$PATH:/home/justin_sus1/.spicetify

