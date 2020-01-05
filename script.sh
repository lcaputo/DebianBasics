#!/bin/bash
# RUNTIME - DEBIAN10
sudo apt-get update
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y
sudo useradd -m tecnico
sudo echo tecnico:Admin123 | sudo chpasswd
sudo gpasswd -a  tecnico sudo
sudo usermod -aG  sudo tecnico
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    neofetch \
    xrdp \
    ufw 
# UNISTALL FUSE
sudo apt remove -y fuse
sudo apt --purge autoremove
# LOGIN
su tecnico
# INSTALAR PYTHON
sudo apt install -y python3 python3-pip
# INSTALAR INTERFACE LXDE
sudo apt-get install -y --no-install-recommends lxde
# UTILITIES
sudo apt install -y terminator zsh chromium
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/robbyrussell/af-magic/g' ~/.zshrc
chsh -s $(which zsh)
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
sudo usermod -aG docker $USER
sudo service docker restart
# MYSQL PORT OPEN
sudo ufw allow 3306
# INSTALAR NODE 
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
# EXTRA
sudo apt install -y console-data maven nodejs libreoffice
sudo npm i @angular/cli -g
sudo ufw allow 3389 	
sed -i 's/console/anybody/g' /etc/X11/Xwrapper.config
