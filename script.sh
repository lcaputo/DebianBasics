#!/bin/bash
# RUNTIME - DEBIAN10
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
sudo apt install -y terminator chromium zsh
sudo reboot
