#!/bin/bash 

echo "## ZSH: $(zsh --version) on: $(which zsh)"
touch ~/.zshrc
mkdir ~/.zsh

echo "## Installing straship..."
cd $HOME/Downloads
wget -q --show-progress https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz
tar xvf starship-x86_64-unknown-linux-gnu.tar.gz
sudo mv ./target/x86_64-unknown-linux-gnu/release/starship /usr/local/bin/
sudo rm -rf ./target starship-x86_64*
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

echo "## Installing Starship plugins...."

echo "#### Syntax Highlighting..."
cd ~/.zsh && git clone https://github.com/zdharma/fast-syntax-highlighting.git
echo "source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc

echo "#### zsh-autosuggestion..."
cd ~/.zsh && git clone https://github.com/zsh-users/zsh-autosuggestions.git
echo "source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

echo "#### zsh-autosuggestion..."
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/history.zsh
echo "source $HOME/.zsh/history.zsh" >> ~/.zshrc

echo "#### Completion plugin..."
cd ~/.zsh && wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh
echo "source $HOME/.zsh/completion.zsh" >> ~/.zshrc
echo "autoload -Uz compinit  # Initialize the completion system" >> ~/.zshrc
echo "zmodload -i zsh/complist # Enhanced form of menu completion called 'menu selection'" >> ~/.zshrc

echo "## Cloning aliases"
cd ~/.zsh && git clone https://gist.github.com/a4d3d551978e44e612f5dcd496208691.git
sudo mv ~/.zsh/a4d3d551978e44e612f5dcd496208691/aliases.zsh ~/.zsh/
sudo rm -rf ~/.zsh/a4d3d551978e44e612f5dcd496208691

echo "## Reload .zshrc"
cd ~/
source ~/.zshrc
