### [Pushbullet indicator](https://launchpad.net/pushbullet-indicator)
```bash
echo 'deb http://us.archive.ubuntu.com/ubuntu/ bionic main restricted universe multiverse' | sudo tee /etc/apt/sources.list.d/ubuntu-bionic.list
sudo rm -rfv /etc/apt/sources.list.d/atareao-ubuntu-pushbullet* /etc/apt/trusted.gpg.d/atareao_ubuntu_pushbullet
sudo add-apt-repository -y ppa:atareao/pushbullet
sudo apt install -y --reinstall pushbullet-indicator 
sudo sed -i 's/Icon = \/opt\/extras.ubuntu.com\/pushbullet-indicator\/share\/pushbullet-indicator\/icons\/pushbullet-indicator.svg/Icon=pushbullet-indicator/g' /usr/share/applications/extras-pushbullet-indicator.desktop
echo DPkg::Post-Invoke \{\"sed -i \'s/Icon = \\/opt\\/extras.ubuntu.com\\/pushbullet-indicator\\/share\\/pushbullet-indicator\\/icons\\/pushbullet-indicator.svg/Icon=pushbullet-indicator/g\' /usr/share/applications/extras-pushbullet-indicator.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100pushbullet-indicator
```
[![bashrun-url](images/bashrun-url.png)](br:pushbullet-indicator)