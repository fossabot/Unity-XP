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

# AppImageD
if promptyn "Você deseja atualizar o AppImageD? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/appimaged_1-alpha-git0f1c320.travis214_amd64.deb
  sudo apt install -y ./appimaged_1-alpha-git0f1c320.travis214_amd64.deb;rm -rfv appimaged*.deb
  sudo cp -rfv /usr/share/applications/appimaged*.desktop /etc/xdg/autostart/
fi

# OCS-URL
if promptyn "Você deseja instalar o OCS-URL? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/ocs-url_3.1.0-0ubuntu1_amd64.deb
  sudo apt install -y ./ocs-url_3.1.0-0ubuntu1_amd64.deb;rm -rfv ocs-url*.deb
fi

# GpuTest
if promptyn "Você deseja instalar o GpuTest? (s/n)"; then
  sudo apt intall -y python-tk
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/GpuTest_Linux_x64_0.7.0.zip
  mkdir -pv $HOME/.local/share/applications
  unzip GpuTest_Linux_x64_0.7.0.zip -d $HOME/.local/share/;rm -rfv GpuTest*.zip
  wget -cO $HOME/.local/share/applications/gputest.desktop https://github.com/rauldipeas/Unity-XP/raw/master/resources/gputest.desktop
fi

# Stacer
if promptyn "Você deseja instalar o Stacer? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/stacer_1.1.0_amd64.deb
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
if promptyn "Você deseja mudar o tema do Plymouth para o Placidity? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/placidity.tar.gz
  sudo tar -vzxf placidity.tar.gz -C /usr/share/plymouth/themes/;rm -rfv placidity*
  sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/placidity/placidity.plymouth 100
  sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/placidity/placidity.plymouth
  sudo update-initramfs -u -k all
fi

# SMPlayer
if promptyn "Você deseja instalar o SMPlayer? (s/n)"; then
  sudo apt install -y mplayer smplayer
  mkdir -p $HOME/.config/smplayer
  wget -cO $HOME/.config/smplayer/smplayer.ini https://github.com/rauldipeas/Unity-XP/raw/master/code/settings/smplayer.ini
fi

# GRUB 2 themes (Tela)
if promptyn "Você deseja instalar o tema Tela para o GRUB? (s/n)"; then
  git clone https://github.com/vinceliuice/grub2-themes;cd grub2-themes
  sudo ./install.sh -t;cd ..;rm -rfv grub2-themes
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