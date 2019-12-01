### [JACK](https://jackaudio.org/)
```bash
sudo usermod -aG audio $USER
sudo usermod -aG video $USER
echo jackd2 jackd/tweak_rt_limits string true | sudo debconf-set-selections
sudo apt install -y --no-install-recommends --reinstall laditools patchage ubuntustudio-controls
sudo apt install -y --reinstall carla
sudo sed -i 's/256/224/g' /usr/share/ubuntustudio-controls/ubuntustudio-controls.glade
echo DPkg::Post-Invoke \{\"sed -i \'s/256/224/g\' /usr/share/ubuntustudio-controls/ubuntustudio-controls.glade\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100ubuntustudio-controls
sudo rm -rfv /usr/share/applications/ladi-control-center.desktop /usr/share/applications/ladi-player.desktop /usr/share/applications/ladi-system-log.desktop
sudo mkdir -pv /usr/local/sbin
echo '#!/bin/bash
ubuntustudio-controls' | sudo tee /usr/local/bin/ladi-control-center;sudo chmod +x /usr/local/bin/ladi-control-center
sudo cp -rfv /usr/share/applications/ladi-system-tray.desktop /etc/xdg/autostart/
echo DPkg::Post-Invoke \{\"find /usr/share/icons/Papirus* -type f -name ladi* -exec sed -i \'s/4285f4/4e9a06/g\' {} \\\;\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100laditray-papirus
echo DPkg::Post-Invoke \{\"rm -rfv /usr/share/applications/ladi-control-center.desktop /usr/share/applications/ladi-player.desktop /usr/share/applications/ladi-system-log.desktop\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100laditools
```
[![bashrun-url](images/bashrun-url.png)](br:jack)