#!/bin/bash
# RUNTIME - DEBIAN10
sudo apt-get update
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y
sudo apt-get install sudo
sudo useradd -m tecnico
sudo echo tecnico:Admin123 | sudo chpasswd
sudo gpasswd -a  tecnico sudo
sudo usermod -aG  sudo tecnico
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    gnome-terminal \
    software-properties-common \
    neofetch \
    lxde \
    xrdp \
    ufw 
# INSTALAR JDK8
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt update
sudo apt install -y adoptopenjdk-8-hotspot
# INSTALAR DOCKER
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose
sudo groupadd docker
sudo usermod -aG docker tecnico #$(whoami)
sudo service docker restart
# MYSQL PORT OPEN
sudo ufw allow 3306
# INSTALAR NODE 
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
# KEYMAP
sudo apt install -y console-data maven nodejs
setxkbmap es sundeadkeys
sudo npm i @angular/cli -g
sudo ufw allow 3389 	
sed -i 's/console/anybody/g' /etc/X11/Xwrapper.config
# INSTALAR PYTHON
sudo apt install -y python3 python3-pip
