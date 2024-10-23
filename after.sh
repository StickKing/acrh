#!/bin/bash
ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc
# Раскладка, шрифт, локализация
echo en_US.UTF-8 UTF-8 > /etc/locale.gen
echo ru_RU.UTF-8 UTF-8 >> /etc/locale.gen
locale-gen
loadkeys ru
setfont cyr-sun16
echo LANG=en_US.UTF-8 >> /etc/locale.conf
echo anton-pc > /etc/hostname
pacman -S grub efibootmgr networkmanager code firefox mattermost-desktop htop wget docker docker-compose thunderbird sudo pipewire ly kitty hyprland

systemctl enable NetworkManager
systemctl enable ly
systemctl enable docker

echo %wheel ALL=(ALL) ALL >> /etc/sudoers
useradd -m anton -G wheel


# grub-install /dev/sda --efi-dir=/boot/
# grub-mkconfig -o /boot/grub/grub.cfg
# passwd