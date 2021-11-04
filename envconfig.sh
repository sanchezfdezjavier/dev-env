#! /bin/bash

# Improve git default log command
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Install Oh My Zsh
sudo apt update
sudo apt install zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&

# Install batcat -> A better colorful cat
sudo apt install bat && 
echo "alias cat='batcat'" >> .zshrc &&

# Install session manager --> Command line tool to store window arrangemet
sudo npm install -g linux-window-session-manager
