### [Hardcode-tray](https://github.com/bilelmoussaoui/Hardcode-Tray)
```bash
sudo rm -rfv /etc/apt/sources.list.d/papirus-ubuntu-papirus-dev* /etc/apt/trusted.gpg.d/papirus_ubuntu_papirus-dev*
sudo add-apt-repository -y ppa:papirus/papirus-dev
sudo rm -rfv /etc/apt/sources.list.d/papirus-ubuntu-hardcode-tray* /etc/apt/trusted.gpg.d/papirus_ubuntu_hardcode-tray*
sudo add-apt-repository -y ppa:papirus/hardcode-tray
sudo apt install -y --reinstall hardcode-tray papirus-icon-theme
sudo rm -rfv $HOME/.config/Hardcode-Tray
sudo hardcode-tray --apply
```
[![bashrun-url](images/bashrun-url.png)](br:hardocre-tray)