#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing Snaps softwares"
echo "#############################"
echo ""

sudo apt install -y snapd

## Instalando pacotes Snap ##
sudo snap install slack --classic &&  
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
# sudo snap install --edge node --classic && 
sudo snap install insomnia &&  
sudo snap install spotify &&

## Softwares que precisam de download externo ##

cd ~/Downloads/ && 
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && 
sudo dpkg -i *.deb
