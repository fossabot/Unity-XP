### [DaVinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve)

[**BAIXE O INSTALADOR DO DAVINCI RESOLVE MANUALMENTE NO SITE OFICIAL**](https://www.blackmagicdesign.com/products/davinciresolve)
```bash
wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/debs/ffmulticonverter_1.8.0-dmo1-1ubuntu1-rauldipeas_all.deb
sudo apt install -y ./ffmulticonverter*rauldipeas*.deb ocl-icd-libopencl1;rm -rfv ffmulticonverter*rauldipeas*.deb
unzip $HOME/Downloads/DaVinci_Resolve*.zip;./DaVinci_Resolve*Linux.run;rm -rfv *esolve*
echo 'StartupWMClass=resolve' | sudo tee -a /usr/share/applications/com.blackmagicdesign.resolve.desktop
echo 'Categories=AudioVideo;' | sudo tee -a /usr/share/applications/com.blackmagicdesign.resolve.desktop
sudo sed -i 's/Icon=\/opt\/resolve\/graphics\/DV_Resolve.png/Icon=resolve/g' /usr/share/applications/com.blackmagicdesign.resolve.desktop
sudo rm -rfv /usr/share/applications/com.blackmagicdesign.resolve-*.desktop
sudo ln -s /usr/lib/x86_64-linux-gnu/ /usr/lib64
```
[![bashrun-url](images/bashrun-url.png)](br:resolve)