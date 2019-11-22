### [DBeaver](https://dbeaver.io/)
```bash
wget -c https://dbeaver.io/files/6.2.4/dbeaver-ce_6.2.4_amd64.deb
sudo apt install -y ./dbeaver*.deb
sudo sed -i 's/Icon=\/usr\/share\/dbeaver\/dbeaver.png/Icon=dbeaver/g' /usr/share/applications/dbeaver.desktop
```
