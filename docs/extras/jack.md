### [JACK](https://jackaudio.org/)
```bash
sudo usermod -aG audio $USER
sudo usermod -aG video $USER
echo jackd2 jackd/tweak_rt_limits string true | sudo debconf-set-selections
sudo apt install -y --no-install-recommends --reinstall patchage ubuntustudio-controls
sudo apt install -y --reinstall carla
sudo sed -i 's/256/224/g' /usr/share/ubuntustudio-controls/ubuntustudio-controls.glade
echo DPkg::Post-Invoke \{\"sed -i \'s/256/224/g\' /usr/share/ubuntustudio-controls/ubuntustudio-controls.glade\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100ubuntustudio-controls
```
[![bashrun-url](images/bashrun-url.png)](br:jack)