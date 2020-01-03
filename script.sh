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
# KEYMAP
sudo apt install -y console-data 
sudo echo "[Desktop Entry]" > /home/tecnico/.config/autostart/language.desktop
sudo echo "Type=Application" >> /home/tecnico/.config/autostart/language.desktop
sudo echo "Exec=setxkbmap latam" >> /home/tecnico/.config/autostart/language.desktop
sudo echo "[Desktop Entry]" > /home/tecnico/.config/autostart/terminal.desktop
sudo echo "Type=Application" >> /home/tecnico/.config/autostart/language.desktop
sudo echo "Exec=gnome-terminal" >> /home/tecnico/.config/autostart/language.desktop
# ACTIVAR CONNEXION REMOTA
sudo ufw allow 3389 	
sed -i 's/console/anybody/g' /etc/X11/Xwrapper.config
