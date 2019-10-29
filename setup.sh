#!/bin/bash 

echo "###################################################"
echo "############  WELCOME TO UBUNTU SETUP  ############"
echo "###################################################"

./scripts/dnfinstall.sh
./scripts/snapinstall.sh
./scripts/terminal_config.sh
./scripts/git.sh
./scripts/node.sh
./scripts/docker.sh
# ./scripts/programs.sh
./scripts/desktop.sh

# Get all upgrades
sudo dnf upgrade -y

# source ~/.zshrc

figlet DONE! | lolcat
shutdown -r +2