#!/bin/bash
# RUNTIME - DEBIAN10
###################
### CREATE USER ###
###################
sudo apt-get update
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y
sudo useradd -m tecnico
sudo echo tecnico:Admin123 | sudo chpasswd
sudo gpasswd -a  tecnico sudo
sudo usermod -aG  sudo tecnico
####################
### INSTALL APPS ###
####################
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    software-properties-common \
    libreoffice\
    curl \
    gnupg2 \
    neofetch \
    fish \
    xrdp \
    ufw 
sudo usermod --shell /bin/bash tecnico
# UNISTALL FUSE
sudo apt remove -y fuse
sudo apt --purge autoremove
# INSTALAR PYTHON
sudo apt install -y python3 python3-pip
# INSTALAR INTERFACE LXDE
sudo apt-get install -y --no-install-recommends lxde
# EXTRA
sudo apt install -y console-data 
sudo ufw allow 3389 	
sudo sed -i 's/console/anybody/g' /etc/X11/Xwrapper.config
# UTILITIES
sudo echo "sh ~/DebianBasics/2.sh" >> ~/.zhsrc
sudo apt install -y terminator chromium 
# INSTALAR JDK8
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt update
sudo apt install -y adoptopenjdk-8-hotspot maven
# INSTALAR NODE 
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
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
sudo usermod -aG docker tecnico
sudo service docker restart
# MYSQL PORT OPEN
sudo ufw allow 3306
