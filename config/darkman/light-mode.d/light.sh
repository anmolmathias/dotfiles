#!/bin/sh

cp -rf "$HOME/.config/sway/themes/apprentice-light.conf" "$HOME/.config/sway/themes/colors.conf"
sway reload
sed -i 's/habamax/habalbum/g' /home/nml/.vimrc
kitten themes --reload-in=all habalight
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3' && gsettings set org.gnome.desktop.interface color-scheme 'default'
