### [MKUSB](https://help.ubuntu.com/community/mkusb)
```bash
sudo add-apt-repository -y ppa:mkusb/ppa
sudo apt install -y --no-install-recommends mkusb
sudo rm -rfv /usr/share/applications/guidus.desktop
echo DPkg::Post-Invoke \{\"rm -rfv /usr/share/applications/guidus.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100mkusb
```
[![bashrun-url](images/bashrun-url.png)](br:mkusb)