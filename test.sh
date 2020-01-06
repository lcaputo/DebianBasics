sudo apt install -y zsh
sudo echo "exit" >> ~/.zhsrc
sudo sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo sed -i "s|robbyrussell|af-magic|g" ~/.zshrc
chsh -s $(which zsh)
sudo sed -i "s|exit| |g" ~/.zshrc
