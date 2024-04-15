#!/bin/sh

cp -rf "$HOME/.config/sway/themes/apprentice-dark.conf" "$HOME/.config/sway/themes/colors.conf"
sway reload
sed -i 's/habalbum/habamax/g' /home/nml/.vimrc
kitten themes --reload-in=all habadark
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
