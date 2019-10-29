#!/bin/bash 

echo ""
echo "#############################"
echo "# Install default packages from Fedora repository"
echo "#############################"
echo ""

sudo dnf update

function install {
    which $1 &> /dev/null

    if [ $? -ne 0 ]; then
        echo "Installing: ${1}..."
        sudo dnf install -y $1
    else
        echo "Already installed: ${1}"
    fi
}

install exfat-utils
install file
install curl
install git
install fonts-firacode
install zsh
# install htop

install imagemagick

install figlet
install lolcat