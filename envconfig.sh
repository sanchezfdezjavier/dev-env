sudo apt update && 
sudo apt install bat && 
sudo apt install zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "alias cat='batcat'" >> .zshrc