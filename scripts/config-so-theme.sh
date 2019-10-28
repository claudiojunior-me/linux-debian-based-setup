#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Styling the SO with Dracula Theme"
echo "#############################"
echo ""

echo "    Cloning to Ant-Dracula...."
git clone https://github.com/Diego-Brocanelli/Ant-Dracula.git ~/.themes/Ant-Dracula

echo "    Set to Ant-Dracula theme...."
gsettings set org.gnome.desktop.interface gtk-theme "Ant-Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Ant-Dracula"
echo "    Set to Dracula wallpaper...."
cp img/dracula_wallpaper.png $HOME/Imagens/
gsettings set org.gnome.desktop.background picture-uri file://$HOME/Downloads/dracula_wallpaper.png
echo ""