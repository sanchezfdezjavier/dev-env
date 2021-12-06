#! /bin/bash

# Improve git default log command
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit" &&

# Install xcode tools (takes a while)
xcode-select —install

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/javi/.zprofile &&
eval "$(/opt/homebrew/bin/brew shellenv)" &&

# Install zsh
brew install zsh &&
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh) &&
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&

# Setup
# TODO: zsh custom theme

# Install batcat, a prettier cat
brew install bat &&
echo "alias cat='batcat'" >> .zshrc &&

# Install exa
brew install exa
echo "alias exa='ls'" >> .zshrc



# TODO: regular applications
# Install cask
brew install cask
export PATH="$HOME/.cask/bin:$PATH"
brew install visual-studio-code
brew install notion