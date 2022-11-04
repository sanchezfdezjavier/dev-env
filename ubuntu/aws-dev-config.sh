#! /bin/bash


# Updates apt
sudo apt update -qq

# Improves git default log command
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Sets git config
git clone https://github.com/sanchezfdezjavier/dev-env.git
cd dev-env
chmod +x git-config.sh
./git-config.sh

# Installs virtualenv
sudo apt install python3-virtualenv -y
sudo apt install python3-pip
sudo pip3 install virtualenv

# Creates virtualenv
virtualenv venv
source venv/bin/activate

# Installs aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Installs eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

# Installs kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Installs charmcraft
sudo snap install charmcraft --classic

# Installs juju
sudo snap install juju --classic

# Sets aliases
echo "alias k=kubectl" >> ~/.bashrc
echo "alias j=juju" >> ~/.bashrc

# Manual steps
echo "##############################################"
echo "Configure aws cli"
echo "##############################################"
echo "##############################################"
echo "Configure Github SSH key"
echo "##############################################"
echo "✅ Done! ⚠️ But don't forget to configure all of the above."