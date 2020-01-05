sudo sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo sed -i "s|robbyrussell|af-magic|g" ~/.zshrc
chsh -s $(which zsh)
# INSTALAR JDK8
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt update
sudo apt install -y adoptopenjdk-8-hotspot maven
# INSTALAR NODE 
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
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
# EXTRA
sudo apt install -y libreoffice
sudo npm i @angular/cli -g
sudo echo "sh ~/DebianBasics/2.sh" >> ~/.zhsrc
sudo sed -i "s|sh ~/DebianBasics/2.sh| |g" ~/.zshrc
