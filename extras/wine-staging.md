### [WINE staging](https://wiki.winehq.org/Wine-Staging)
```bash
echo "deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_19.10 ./" | sudo tee /etc/apt/sources.list.d/wine-obs.list
wget -O- https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_19.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/wine-obs.gpg
sudo apt update;sudo apt install -y --reinstall winehq-staging winetricks q4wine
sudo wget -O /usr/local/bin/winetricks https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
sudo chmod +x -v /usr/local/bin/winetricks
sudo setcap cap_sys_nice+ep /opt/wine-staging/bin/wineserver
sed -i 's/# Wine-RT//g' ~/.profile
sed -i 's/STAGING_RT_PRIORITY_SERVER=90//g' ~/.profile
sed -i 's/STAGING_RT_PRIORITY_BASE=90//g' ~/.profile
sed -i 's/WINE_RT=15//g' ~/.profile
sed -i 's/WINE_SRV_RT=10//g' ~/.profile
sed -i 's/STAGING_WRITECOPY=1//g' ~/.profile
sed -i 's/STAGING_SHARED_MEMORY=1//g' ~/.profile
sed -i 's/WINE_ENABLE_PIPE_SYNC_FOR_APP=1//g' ~/.profile
echo '# Wine-RT
STAGING_RT_PRIORITY_SERVER=90
STAGING_RT_PRIORITY_BASE=90
WINE_RT=15
WINE_SRV_RT=10
STAGING_WRITECOPY=1
STAGING_SHARED_MEMORY=1
WINE_ENABLE_PIPE_SYNC_FOR_APP=1' >> ~/.profile
```
[![bashrun-url](images/bashrun-url.png)](br:wine-staging)