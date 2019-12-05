### [DaVinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve)

###### BAIXE O INSTALADOR DO DAVINCI RESOLVE MANUALMENTE NO SITE OFICIAL 
###### https://www.blackmagicdesign.com/products/davinciresolve
```bash
wget -c https://launchpad.net/~cteehayder/+archive/ubuntu/ffmulticonverter/+files/ffmulticonverter_1.8.0-dmo1-1ubuntu1_all.deb
sudo apt install -y ./ffmulticonverter*.deb ocl-icd-libopencl1 xorriso;rm -rfv ffmulticonverter*.deb
mkdir -pv ~/.config/ffmulticonverter ~/resolve
wget -O ~/.config/ffmulticonverter/presets.xml https://github.com/rauldipeas/Unity-XP/raw/master/resources/misc/presets.xml
wget -cO ~/resolve/makeresolvedeb.tar.gz http://www.danieltufvesson.com/download/?file=makeresolvedeb/makeresolvedeb_16.1.1-3.sh.tar.gz
cd resolve;tar -vzxf makeresolvedeb*.tar.gz
sed -i 's/Icon=\/opt\/resolve\/graphics\/DV_Resolve.png/Icon=resolve/g' makeresolvedeb*.sh
sed -i 's/Architecture: amd64/Architecture: amd64\nDepends: ocl-icd-libopencl1\nSection: video/g' makeresolvedeb*.sh
unzip ~/Downloads/DaVinci_Resolve_16.1.1_Linux.zip -d .;./makeresolvedeb*.sh lite
sudo gdebi -n ./davinci-resolve*.deb
```
[![bashrun-url](images/bashrun-url.png)](br:resolve)