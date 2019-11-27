### [Gestures](https://gitlab.com/cunidev/gestures)
```bash
sudo gpasswd -a $USER input
sudo apt install -y --reinstall libinput-tools python3-setuptools wmctrl xdotool
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures;sudo make install;cd ..;rm -rfv libinput-gestures*
git clone https://gitlab.com/cunidev/gestures
cd gestures;sudo python3 setup.py install;cd ..;sudo rm -rfv gestures*
sudo sed -i 's/org.cunidev.gestures/libinput-gestures/g' /usr/share/applications/org.cunidev.gestures.desktop
sudo mv -v /usr/share/applications/libinput-gestures.desktop /etc/xdg/autostart/
sudo sed -i 's/modifier_map Mod3/\/\/ modifier_map Mod3/g' /usr/share/X11/xkb/symbols/br
```
[![bashrun-url](images/bashrun-url.png)](br:gestures)