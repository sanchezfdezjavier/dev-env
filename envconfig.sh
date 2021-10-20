#! /bin/bash

sudo apt update -y && 
sudo apt install bat -y && 
sudo apt install zsh -y &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "alias cat='batcat'" >> .zshrc

echo "✅ Installation successful"