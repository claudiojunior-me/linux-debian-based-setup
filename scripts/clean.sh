#!/usr/bin/env sh

echo ""
echo "#############################"
echo "######## Cleaning apt #######"
echo "#############################"
echo ""

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&