#! /bin/bash

echo "🟠 Installing..."

sudo apt update -y && 
sudo apt install bat -y && 
sudo apt install zsh -y &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "alias cat='batcat'" >> .zshrc

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

echo "✅ Installation successful"