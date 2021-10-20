#! /bin/bash

echo "🟠 Installing..."

# Install/Setup MicroK8s
sudo snap install --classic microk8s &&
sudo usermod -aG microk8s $(whoami) &&
sudo microk8s status --wait-ready && 
sudo microk8s enable storage dns ingress &&
sudo snap alias microk8s.kubectl kubectl &&
newgrp microk8s &&

# Install Charmcraft
sudo snap install lxd --classic &&
sudo lxd init --auto &&
sudo snap install charmcraft --classic &&

# Install Juju
sudo snap install juju --classic &&

# Bootstrap MicroK8s
echo "✅ Installation successful"
echo "juju bootstrap microk8s micro --> To create a controller called micro"
echo "juju add-model dev --> To create a model called dev"