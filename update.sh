#!/bin/bash

assume_yes="${@: -1}"

function promptyn(){
  if [[ "$assume_yes" = "-s" ]] || [[ "$assume_yes" = "-y" ]]; then
    return 0
  fi
  clear
  while true; do
    read -p "$1 " sn
    case $sn in
      [Ss]* ) return 0;;
      [Nn]* ) return 1;;
    esac
  done
}

# AppImageD & AppImageLauncher
if promptyn "Você deseja atualizar o AppImageD? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/debs/appimaged_1-alpha-git0f1c320.travis214_amd64.deb
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/debs/appimagelauncher_2.0.3-travis888.4f7bc8e.eoan_amd64.deb
  wget -cO ~/.config/appimagelauncher.cfg https://github.com/rauldipeas/Unity-XP/raw/master/code/settings/appimagelauncher.cfg
  sudo apt install -y ./appimaged_1-alpha-git0f1c320.travis214_amd64.deb ./appimagelauncher_2.0.3-travis888.4f7bc8e.eoan_amd64.deb;rm -rfv appimage*.deb
  sudo cp -rfv /usr/share/applications/appimaged*.desktop /etc/xdg/autostart/
fi

# OCS-URL
if promptyn "Você deseja instalar o OCS-URL? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/debs/ocs-url_3.1.0-0ubuntu1_amd64.deb
  sudo apt install -y ./ocs-url_3.1.0-0ubuntu1_amd64.deb;rm -rfv ocs-url*.deb
fi

# GpuTest
if promptyn "Você deseja instalar o GpuTest? (s/n)"; then
  sudo apt intall -y python-tk
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/misc/GpuTest_Linux_x64_0.7.0.zip
  mkdir -pv $HOME/.local/share/applications
  unzip GpuTest_Linux_x64_0.7.0.zip -d $HOME/.local/share/;rm -rfv GpuTest*.zip
  wget -O $HOME/.local/share/applications/gputest.desktop https://github.com/rauldipeas/Unity-XP/raw/master/resources/launchers/gputest.desktop
fi

# Stacer
if promptyn "Você deseja instalar o Stacer? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/debs/stacer_1.1.0_amd64.deb
  sudo apt install -y ./stacer_1.1.0_amd64.deb;rm -rfv stacer*.deb
fi

# Compiz plugins
if promptyn "Você deseja instalar os plugins do Compiz? (s/n)"; then
  sudo apt install -y compiz-plugins
fi

# Nemo MIME
if promptyn "Você deseja atualizar as configurações de MIME? (s/n)"; then
  sudo sed -i 's/inode\/directory=code.desktop;nemo.desktop;/inode\/directory=nemo.desktop;code.desktop;/g' /usr/share/applications/mimeinfo.cache
fi

# Yaru++ (Papirus status)
if promptyn "Você deseja mudar os ícones de status para o tema Papirus? (s/n)"; then
  sudo sed -i 's/Papirus/Yaru/g' /usr/share/icons/Yaru++/index.theme
  sudo sed -i 's/Yaru,/Papirus,/g' /usr/share/icons/Yaru++/index.theme
  sudo rm -rfv /usr/share/icons/Yaru++/status/*
  sudo ln -s /usr/share/icons/Papirus/22x22/panel/ /usr/share/icons/Yaru++/status/24
  gsettings set org.gnome.desktop.interface icon-theme Yaru++
fi

# Diodon
if promptyn "Você deseja instalar o Diodon? (s/n)"; then
  sudo apt install -y diodon
fi

# XanMod
if promptyn "Você deseja instalar o kernel XanMod? (s/n)"; then
  echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
  wget -O- https://dl.xanmod.org/gpg.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/xanmod-kernel.gpg
  sudo apt update
  sudo apt install -y linux-xanmod
fi

# Crow translate
if promptyn "Você deseja instalar o Crow Translate? (s/n)"; then
  wget -c https://github.com/crow-translate/crow-translate/releases/download/2.2.3/crow-translate-2.2.3-amd64.deb
  sudo apt install -y ./crow-translate-2.2.3-amd64.deb;rm -rfv crow-translate*.deb
fi

# Light GTK greeter
if promptyn "Você deseja mudar o greeter do LightDM para o GTK? (s/n)"; then
  sudo apt install -y lightdm-gtk-greeter-settings
  sudo wget -O /etc/lightdm/lightdm-gtk-greeter.conf https://github.com/rauldipeas/Unity-XP/raw/master/code/settings/lightdm-gtk-greeter.conf
fi

# Fonts EmojiOne
if promptyn "Você deseja instalar o suporte à emojis? (s/n)"; then
  sudo apt install -y fonts-emojione
fi

# Placidity plymouth
if promptyn "Você deseja atualizar o tema do Plymouth? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/misc/placidity.tar.gz
  sudo tar -vzxf placidity.tar.gz -C /usr/share/plymouth/themes/;rm -rfv placidity*
  sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/placidity/placidity.plymouth 100
  sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/placidity/placidity.plymouth
  sudo update-initramfs -u -k all
fi

# SMPlayer
if promptyn "Você deseja instalar o SMPlayer? (s/n)"; then
  sudo apt install -y mplayer smplayer
  mkdir -p $HOME/.config/smplayer
  wget -O $HOME/.config/smplayer/smplayer.ini https://github.com/rauldipeas/Unity-XP/raw/master/code/settings/smplayer.ini
fi

# GRUB 2 themes (Tela)
if promptyn "Você deseja instalar o tema Tela para o GRUB? (s/n)"; then
  git clone https://github.com/vinceliuice/grub2-themes;cd grub2-themes
  sudo ./install.sh -t;cd ..;rm -rfv grub2-themes
  sudo wget -O /usr/share/grub/themes/Tela/terminus-24.pf2 https://github.com/rauldipeas/Unity-XP/raw/master/code/grub/Tela/terminus-24.pf2
  sudo sed -i 's/14/24/g' /usr/share/grub/themes/Tela/theme.txt;sudo sed -i 's/16/24/g' /usr/share/grub/themes/Tela/theme.txt
fi

# VSCodium
if promptyn "Você deseja instalar o VSCodium? (s/n)"; then
  echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
  wget -O- https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/vscodium.gpg
  sudo apt update;sudo apt install -y ibus-gtk3 codium
  sudo sed -i 's/Icon=\/usr\/share\/pixmaps\/vscodium.png/Icon=vscodium/g' /usr/share/applications/codium.desktop
  echo DPkg::Post-Invoke \{\"sed -i \'s/Icon=\\/usr\\/share\\/pixmaps\\/vscodium.png/Icon=vscodium/g\' /usr/share/applications/codium*.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100vscodium
  sudo sed -i 's/inode\/directory=codium.desktop;nemo.desktop;/inode\/directory=nemo.desktop;codium.desktop;/g' /usr/share/applications/mimeinfo.cache
fi

# Bash run
if promptyn "Você deseja instalar o Bash run? (s/n)"; then
  sudo apt install -y dos2unix xterm
  sudo wget -O /usr/bin/bashrun-url https://github.com/rauldipeas/Unity-XP/raw/master/resources/misc/bashrun-url
  sudo chmod +x -v /usr/bin/bashrun-url
  sudo wget -O /usr/share/applications/bashrun.desktop https://github.com/rauldipeas/Unity-XP/raw/master/resources/launchers/bashrun.desktop
  sudo update-desktop-database
  sudo rm -rfv /usr/share/applications/debian-*xterm.desktop
fi

# GNOME font viewer
if promptyn "Você deseja instalar o gerenciador de fontes do GNOME? (s/n)"; then
  sudo apt install -y gnome-font-viewer
fi

# Simple weather indicator
if promptyn "Você deseja instalar o indicator de clima? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/debs/indicator-weather_1.1-0ubuntu5_all.deb
  sudo apt install -y fonts-dejavu-core ./indicator-weather_1.1-0ubuntu5_all.deb;rm -rfv indicator-weather*.deb
  sudo sed -i 's/Icon=\/usr\/share\/icons\/hicolor\/64x64\/apps\/indicator-weather.png/Icon=indicator-weather/g' /usr/share/applications/indicator-weather.desktop
fi

# SAMBA
if promptyn "Você deseja instalar o suporte ao SAMBA? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/debs/nemo-share_4.0.0-1_disco0_amd64.deb
  sudo apt install -y libnss-winbind ./nemo-share_4.0.0-1_disco0_amd64.deb winbind
  sudo chmod 1775 /var/lib/samba/usershares/
  sudo sed -i 's/\ dns/\ wins\ dns\ mdns4/g' /etc/nsswitch.conf
  sudo sed -i 's/\#\ \ \ wins\ support\ \=\ no/\ \ \ wins\ support\ \=\ yes/g' /etc/samba/smb.conf
  sudo sed -i 's/workgroup = WORKGROUP/workgroup = WORKGROUP\n   client max protocol = NT1/g' /etc/samba/smb.conf
fi

# Gestures
if promptyn "Você deseja instalar o suporte ao gestos do touchpad? (s/n)"; then
  sudo gpasswd -a $USER input
  sudo apt install -y --reinstall libinput-tools python3-setuptools wmctrl xdotool
  git clone https://github.com/bulletmark/libinput-gestures.git
  cd libinput-gestures;sudo make install;cd ..;rm -rfv libinput-gestures*
  git clone https://gitlab.com/cunidev/gestures
  cd gestures;sudo python3 setup.py install;cd ..;sudo rm -rfv gestures*
  sudo sed -i 's/org.cunidev.gestures/libinput-gestures/g' /usr/share/applications/org.cunidev.gestures.desktop
  sudo mv -v /usr/share/applications/libinput-gestures.desktop /etc/xdg/autostart/
  sudo sed -i 's/modifier_map Mod3/\/\/ modifier_map Mod3/g' /usr/share/X11/xkb/symbols/br
fi

# RCloneTray & RClone browser
if promptyn "Você deseja instalar o RCloneTray e o RClone browser? (s/n)"; then
  wget -c https://github.com/dimitrov-adrian/RcloneTray/releases/download/v1.0.0/rclonetray_1.0.0_amd64.deb
  sudo apt install -y rclone rclone-browser ./rclonetray_1.0.0_amd64.deb;rm -rfv rclonetray*.deb
  sudo sed -i 's/Icon=\/usr\/share\/pixmaps\/rclone-browser.png/Icon=rclone-browser/g' /usr/share/applications/rclone-browser.desktop
  echo DPkg::Post-Invoke \{\"sed -i \'s/Icon=\\/usr\\/share\\/pixmaps\\/rclone-browser.png/Icon=rclone-browser/g\' /usr/share/applications/rclone-browser*.desktop\"\;\}\; | sudo tee $HOME/Unity-XP/chroot/etc/apt/apt.conf.d/100rclone-browser
fi

# KDEConnect
if promptyn "Você deseja instalar o KDEConnect? (s/n)"; then
  sudo apt install -y --no-install-recommends kdeconnect
fi

# Pling store
if promptyn "Você deseja adicionar um atalho para a Pling store? (s/n)"; then
  sudo rm -rfv /etc/apt/sources.list.d/papirus-ubuntu-papirus-dev* /etc/apt/trusted.gpg.d/papirus_ubuntu_papirus-dev*
  sudo add-apt-repository -y ppa:papirus/papirus-dev
  sudo apt install -y papirus-icon-theme
  sudo wget -O /usr/share/applications/pling-store.desktop https://github.com/rauldipeas/Unity-XP/raw/master/resources/launchers/pling-store.desktop
fi

# Folder color Nemo
if promptyn "Você deseja instalar o Folder color para o Nemo? (s/n)"; then
  sudo rm -rfv /etc/apt/sources.list.d/costales-ubuntu-folder-color* /etc/apt/trusted.gpg.d/costales_ubuntu_folder-color*
  sudo add-apt-repository -y ppa:costales/folder-color
  sudo apt install -y folder-color-nemo
  wget -O- https://raw.githubusercontent.com/Bonandry/suru-plus-ubuntu/master/install.sh | sh
  sudo sed -i 's/Papirus/Suru++-Ubuntu,Papirus/g' /usr/share/icons/Yaru++/index.theme
fi

# XFCE notifyd
if promptyn "Você deseja instalar o XFCE notifyd? (s/n)"; then
  sudo apt install -y xfce4-notifyd
  sudo wget -O /etc/xdg/autostart/xfce4-notifyd-unity.desktop https://github.com/rauldipeas/Unity-XP/raw/master/resources/launchers/xfce4-notifyd-unity.desktop
  sudo sed -i 's/OnlyShowIn=XFCE;/OnlyShowIn=XFCE;Unity;/g' /usr/share/applications/xfce4-notifyd-config.desktop
  echo DPkg::Post-Invoke \{\"sed -i \'s/OnlyShowIn=XFCE;/OnlyShowIn=XFCE;Unity;/g\' /usr/share/applications/xfce4-notifyd-config.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100xfce4-notifyd-unity
fi