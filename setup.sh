#!/bin/bash 

echo "###################################################"
echo "############  WELCOME TO UBUNTU SETUP  ############"
echo "###################################################"

# ./scripts/aptinstall.sh
# ./scripts/terminal_config.sh
# ./scripts/docker.sh
# ./scripts/programs.sh
./scripts/desktop.sh

# Get all upgrades
# sudo apt upgrade -y

source ~/.zshrc

figlet DONE! | lolcat