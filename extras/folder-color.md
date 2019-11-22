### [Folder-color](http://foldercolor.tuxfamily.org/)
```bash
sudo add-apt-repository -y ppa:costales/folder-color
sudo apt install -y nemo-folder-color
wget -qO- https://raw.githubusercontent.com/Bonandry/suru-plus-ubuntu/master/install.sh | sh
sudo sed -i 's/Papirus/Suru++-Ubuntu,Papirus/g' /usr/share/icons/Yaru++/index.theme
```