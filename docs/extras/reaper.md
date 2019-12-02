### [REAPER](http://reaper.fm/)
```bash
wget -c https://www.reaper.fm/files/5.x/reaper598_linux_x86_64.tar.xz #update_link
tar -Jxf reaper*.tar.xz;rm -rfv reaper*.tar.xz;cd reaper_linux*
sudo ./install-reaper.sh --install /opt --quiet --integrate-desktop --usr-local-bin-symlink;cd ..;rm -rfv reaper_linux*
sudo wget -O /opt/REAPER/Plugins/reaper_sws64.so http://www.sws-extension.org/download/pre-release/linux-2.10.0.0/reaper_sws64.so
mkdir -pv ~/.config/REAPER/UserPlugins
wget -c https://github.com/cfillion/reapack/releases/download/v1.2.1/reaper_reapack64.so -O ~/.config/REAPER/UserPlugins/reaper_reapack64.so
echo "
Actions=NewProject;ShowAudioConfig;ReaMote;WhatsNew;License;
[Desktop Action NewProject]
Name=REAPER (create new project)
Name[pt_BR]=REAPER (criar novo projeto)
Exec=/opt/REAPER/reaper -new
Icon=cockos-reaper
[Desktop Action ShowAudioConfig]
Name=REAPER (show audio configuration on startup)
Name[pt_BR]=REAPER (mostrar configurações de áudio ao iniciar)
Exec=/opt/REAPER/reaper -audiocfg
Icon=cockos-reaper
[Desktop Action ReaMote]
Name=ReaMote
Exec=/opt/REAPER/reamote-server
Icon=folder-remote
[Desktop Action WhatsNew]
Name=What's new
Name[pt_BR]=O que há de novo?
Exec=xdg-open /opt/REAPER/whatsnew.txt
Icon=text-x-plain
[Desktop Action License]
Name=License and User Agreement
Name[pt_BR]=Licença e contrato de usuário
Exec=xdg-open /opt/REAPER/license.txt
Icon=text-x-plain" | sudo tee -a /usr/share/applications/cockos-reaper.desktop
```
[![bashrun-url](images/bashrun-url.png)](br:reaper)