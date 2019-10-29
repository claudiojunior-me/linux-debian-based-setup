#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing Snaps softwares"
echo "#############################"
echo ""

sudo dnf install -y snapd &&
sudo ln -s /var/lib/snapd/snap /snap &&

## Instalando pacotes Snap ##
sudo snap install slack --classic &&  
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install insomnia &&  
sudo snap install spotify &&
sudo snap install htop &&
sudo snap install whatsdesk &&
sudo snap install gitkraken &&
sudo snap install android-studio --classic &&
sudo snap install vlc &&
sudo snap install telegram-desktop

## Softwares que precisam de download externo ##

# cd ~/Downloads/ && 
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && 
sudo dpkg -i *.deb
