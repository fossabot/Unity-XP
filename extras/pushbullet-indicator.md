### [Pushbullet indicator](https://launchpad.net/pushbullet-indicator)
```bash
sudo rm -rfv /etc/apt/sources.list.d/atareao-ubuntu-pushbullet* /etc/apt/trusted.gpg.d/atareao_ubuntu_pushbullet
sudo add-apt-repository -y ppa:atareao/pushbullet
sudo apt install -y --reinstall pushbullet-indicator 
sudo sed -i 's/Icon = \/opt\/extras.ubuntu.com\/pushbullet-indicator\/share\/pushbullet-indicator\/icons\/pushbullet-indicator.svg/Icon=pushbullet-indicator/g' /usr/share/applications/extras-pushbullet-indicator.desktop
echo DPkg::Post-Invoke \{\"sed -i \'s/Icon = \\/opt\\/extras.ubuntu.com\\/pushbullet-indicator\\/share\\/pushbullet-indicator\\/icons\\/pushbullet-indicator.svg/Icon=pushbullet-indicator/g\' /usr/share/applications/extras-pushbullet-indicator.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100guvcview
```
[![bashrun-url](images/bashrun-url.png)](br:pushbullet-indicator)