#!/bin/bash
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
"echo"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo apt-get update
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y
sudo apt-get install sudo
sudo useradd -u 999 admin
sudo echo admin:Admin123 | sudo chpasswd
sudo gpasswd -a  admin sudo
sudo usermod -aG  sudo admin
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    neofetch \
    lxde \
    xrdp \


