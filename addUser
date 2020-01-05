#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y 
sudo apt-get dist-upgrade -y
sudo useradd -m tecnico
sudo echo tecnico:Admin123 | sudo chpasswd
sudo gpasswd -a  tecnico sudo
sudo usermod -aG  sudo tecnico
