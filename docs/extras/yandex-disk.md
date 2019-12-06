### [Yandex disk](https://disk.yandex.com)
```bash
wget -c http://repo.yandex.ru/yandex-disk/yandex-disk_latest_amd64.deb
sudo apt install -y ./yandex-disk*.deb;rm -rfv yandex-disk*.deb
sudo rm -rfv /etc/apt/sources.list.d/slytomcat-ubuntu-ppa* /etc/apt/trusted.gpg.d/slytomcat_ubuntu_ppa*
sudo add-apt-repository -y ppa:slytomcat/ppa
sudo apt install -y yd-tools
sudo sed -i 's/Icon=\/usr\/share\/yd-tools\/icons\/yd-128.png/Icon=yandex-disk/g' /usr/share/applications/Yandex.Disk-indicator.desktop
echo DPkg::Post-Invoke \{\"sed -i \'s/Icon = \\/usr\\/share\\/yd-tools\\/icons\\/yd-128.png/Icon=yandex-disk/g\' /usr/share/applications/Yandex.Disk-indicator.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100yandex-disk
mkdir -pv ~/.config/yd-tools/icons/dark
cp -v /usr/share/icons/Papirus/22x22/panel/yd-* ~/.config/yd-tools/icons/dark/
cd ~/.config/yd-tools/icons/dark/;for i in *; do rsvg-convert $i -o `echo $i | sed -e 's/svg$/png/'`; done
rm -rfv ~/.config/yd-tools/icons/dark/*.svg
```
[![bashrun-url](images/bashrun-url.png)](br:yandex-disk)