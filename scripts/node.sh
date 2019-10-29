#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Running global npm setup from npm.sh"
echo "#############################"
echo ""

# *************************************
# node
#
echo $'installing node via nvm'
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.0/install.sh | bash
echo $'installed nvm\n'

# loading nvm for now
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install stable &&
nvm alias default stable &&
nvm use stable &&

# npm i -g npm 

echo "Installing Create-react-app..." &&
sudo npm i -g create-react-app