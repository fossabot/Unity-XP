### [Yandex disk](https://disk.yandex.com)
```bash
wget -c http://repo.yandex.ru/yandex-disk/yandex-disk_latest_amd64.deb
sudo apt install -y ./yandex-disk*.deb
sudo add-apt-repository -y ppa:slytomcat/ppa
sudo apt install -y yd-tools
sudo sed -i 's/Icon=\/usr\/share\/yd-tools\/icons\/yd-128.png/Icon=yandex-disk/g' /usr/share/applications/Yandex.Disk-indicator.desktop
echo DPkg::Post-Invoke \{\"sed -i \'s/Icon = \\/usr\\/share\\/yd-tools\\/icons\\/yd-128.png/Icon=yandex-disk/g\' /usr/share/applications/Yandex.Disk-indicator.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100yandex-disk
```
[![bashrun-url](images/bashrun-url.png)](br:yandex-disk)