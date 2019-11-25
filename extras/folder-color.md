### [Folder-color](http://foldercolor.tuxfamily.org/)
```bash
sudo rm -rfv /etc/apt/sources.list.d/costales-ubuntu-folder-color* /etc/apt/trusted.gpg.d/costales_ubuntu_folder-color*
sudo add-apt-repository -y ppa:costales/folder-color
sudo apt install -y --reinstall folder-color-nemo
wget -O- https://raw.githubusercontent.com/Bonandry/suru-plus-ubuntu/master/install.sh | sh
sudo sed -i 's/Papirus/Suru++-Ubuntu,Papirus/g' /usr/share/icons/Yaru++/index.theme
nemo -q
```
[![bashrun-url](images/bashrun-url.png)](br:folder-color)