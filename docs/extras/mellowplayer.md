### [MellowPlayer]()
```bash
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/ColinDuquesnoy/xUbuntu_19.10/ /' > /etc/apt/sources.list.d/mellowplayer.list"
wget -O- https://download.opensuse.org/repositories/home:ColinDuquesnoy/xUbuntu_19.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/mellowplayer.gpg
sudo apt update;sudo apt install -y mellowplayer
```
[![bashrun-url](images/bashrun-url.png)](br:mellowplayer)