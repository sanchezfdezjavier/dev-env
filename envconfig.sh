#! /bin/bash

echo "🟠 Installing..."

sudo apt update -y && 

# Install batcat for colored cat outputs --> https://github.com/sharkdp/bat
sudo apt install bat -y && 
echo "alias cat='batcat'" >> ~/.zshrc &&
echo "alias cat='batcat'" >> ~/.bashrc &&

# Install zsh --> https://github.com/ohmyzsh/ohmyzsh
sudo apt install zsh -y &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
sudo chsh $(whoami) -s /bin/zsh &&

# Prettier git log command
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

echo "✅ Installation successful"