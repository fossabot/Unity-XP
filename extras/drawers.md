### [Drawers](https://launchpad.net/drawers)
```bash
wget -c http://mirrors.kernel.org/ubuntu/pool/universe/c/compiz/python-compizconfig_0.9.13.1+18.04.20180302-0ubuntu1_amd64.deb
wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/drawers_14.05-0~175~ubuntu16.04.1_all.deb
sudo apt install -y ./drawers_14.05-0~175~ubuntu16.04.1_all.deb ./python-compizconfig_0.9.13.1+18.04.20180302-0ubuntu1_amd64.deb
rm -rfv drawers*.deb python-compizconfig*.deb
sudo sed -i 's/\/opt\/extras.ubuntu.com\/drawers\/share\/drawers\/media\/drawers.svg/mate-panel-drawer/g' /usr/share/applications/extras-drawers.desktop
```
[![bashrun-url](images/bashrun-url.png)](br:drawers)