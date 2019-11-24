### [DBeaver](https://dbeaver.io/)
```bash
wget -c https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo apt install -y ./dbeaver*.deb;rm -rfv dbeaver*.deb
sudo sed -i 's/Icon=\/usr\/share\/dbeaver\/dbeaver.png/Icon=dbeaver/g' /usr/share/applications/dbeaver.desktop
sudo sed -i 's/Exec=/Exec=env GTK_THEME=vimix-laptop-ruby /g' /usr/share/applications/dbeaver.desktop
```
[![bashrun-url](../resources/bashrun.png)](br:dbeaver)