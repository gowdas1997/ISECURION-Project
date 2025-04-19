#!/bin/bash

echo "[+] Updating the system..."
sudo apt update && sudo apt upgrade -y

echo "[+] Installing Docker, kubectl (using Snap), and htop..."
sudo apt install -y docker.io htop snapd

echo "[+] Installing minikube, kubectl"

sudo apt update

sudo apt install docker.io

sudo systemctl start docker

sudo systemctl enable docker
sudo apt install -y apt-transport-https ca-certificates curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list


sudo snap install kubectl --classic

kubectl version --client

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube version

minikube start --driver=docker

# If you encounter root privileges error, run:like this error (
#❌  Exiting due to DRV_AS_ROOT: The "docker" driver should not be used with root privileges.)

minikube start --driver=docker --force


echo "[+] Creating user 'devops-intern' with sudo (no password)..."
sudo useradd -m devops-intern
echo "devops-intern ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/devops-intern

echo "[+] Configuring UFW firewall to allow ports 22, 80, and 443..."
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw --force enable

echo "[+] Adding cronjob to clean /tmp every 6 hours..."
echo "0 */6 * * * root rm -rf /tmp/*" | sudo tee -a /etc/crontab

echo "[✔] Setup complete!"


