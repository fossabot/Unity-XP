### Pós instalação do [**Unity XP**](https://unityxp.tk) [(**Raul Dipeas**)](https://rauldipeas.tk)

#### Extras
 - Bash-it [#extras](https://docs.unityxp.tk/extras/bash-it)
 - Chromium [#extras](https://docs.unityxp.tk/extras/chromium)
 - Jack [#extras](https://docs.unityxp.tk/extras/jack)
 - LinVST [#extras](https://docs.unityxp.tk/extras/linvst)
 - [**!**]() MKUSB [#extras](https://docs.unityxp.tk/extras/mkusb)
 - Rambox [#extras](https://docs.unityxp.tk/extras/rambox)
 - REAPER [#extras](https://docs.unityxp.tk/extras/reaper)
 - Resolve [#extras](https://docs.unityxp.tk/extras/resolve)
 - VirtualBox [#extras](https://docs.unityxp.tk/extras/virtualbox)

#### Deb/AppImage
 - 4KVideoDownloader [#deb](https://dl.4kdownload.com/app/4kvideodownloader_4.9.3-1_amd64.deb)
 - AsarUI [#deb](https://github.com/myazarc/AsarUI/releases/download/v1.0.2/asarui_1.0.2_amd64.deb) [#appimage](https://github.com/myazarc/AsarUI/releases/download/v1.0.2/asarui-1.0.2-x86_64.AppImage)
 - Dropbox [#deb](https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb) (_Nemo_) [#deb](https://launchpad.net/~embrosyn/+archive/ubuntu/cinnamon/+files/nemo-dropbox_4.0.0-1~disco0_amd64.deb)
 - Deezloader [#appimage](https://t.me/DeezloaderRemix/97)
 - Etcher [#deb](https://github.com/balena-io/etcher/releases/download/v1.5.64/balena-etcher-electron_1.5.64_amd64.deb) [#appimage](https://github.com/balena-io/etcher/releases/download/v1.5.64/balenaEtcher-1.5.64-x64.AppImage)
 - GNOME ALSA mixer [#deb](https://github.com/rauldipeas/Unity-XP/resources/debs/gnome-alsamixer.tar.gz)
 ```bash
 sudo sed -i 's/Icon=\/usr\/share\/pixmaps\/gnome-alsamixer\/gnome-alsamixer-icon.png/Icon=gnome-alsamixer-icon/g' /usr/share/applications/gnome-alsamixer.desktop
 ```
 - MEGASync [#deb](https://mega.nz/linux/MEGAsync/xUbuntu_19.10/amd64/megasync-xUbuntu_19.10_amd64.deb) (_Nemo_) [#deb](https://mega.nz/linux/MEGAsync/xUbuntu_19.10/amd64/nemo-megasync-xUbuntu_19.10_amd64.deb)
 - [**!**]() TeamViewer [#deb](https://www.teamviewer.com/pt-br/download-automatico-do-teamviewer-br/?package=teamviewer_amd64&extension=deb&packageOS=linux)
 - ToneLib Zoom [#deb](https://www.tonelib.net/download/ToneLib-Zoom-amd64.deb)

#### APT
 - Inkscape [**#apt:inkscape**]()
 - KPat [**#apt:kpat**]()
 ```bash
 --no-install-recommends
 ```
 - Sweeper [**#apt:sweeper**]()
 - Caffeine [**#apt:caffeine**]()
 ```bash
 sudo rm -rfv /usr/share/applications/caffeine.desktop
 => (apt.conf.d/100caffeine)
 ```

#### Compiz
 ```bash
 gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ focus-prevention-level 0
 gsettings set org.compiz.place:/org/compiz/profiles/unity/plugins/place/ mode 1
 gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
 gsettings set org.compiz.workarounds:/org/compiz/profiles/unity/plugins/workarounds/ force-swap-buffers true
 gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
 ```

#### MIME
 ```bash
 xdg-mime default nemo.desktop inode/directory
 xdg-mime default org.gnome.gThumb.desktop image/gif
 xdg-mime default org.gnome.gThumb.desktop image/jpg
 xdg-mime default org.gnome.gThumb.desktop image/png
 ```

#### LightDM (NVIDIA)
 ```bash
 echo '#!/bin/sh
 xrandr --setprovideroutputsource modesetting NVIDIA-0
 xrandr --auto' | sudo tee /usr/local/bin/nvidia_lightdm_display_setup.sh
 sudo chmod +x -v /usr/local/bin/nvidia_lightdm_display_setup.sh
 echo '[Seat:*]
 display-setup-script=/usr/local/bin/nvidia_lightdm_display_setup.sh' | sudo tee /etc/lightdm/lightdm.conf.d/nvidia-display-setup.conf
 ```