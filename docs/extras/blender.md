### [Blender](https://www.blender.org)
```bash
wget -c https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.81/blender-2.81-linux-glibc217-x86_64.tar.bz2 #update_linux
tar -jxvf blender*.tar.bz2 -C $HOME/.local/share/;rm -rfv blender*.tar.bz2
mkdir -pv $HOME/.local/share/applications
cp -rfv $HOME/.local/share/blender-2.81-linux-glibc217-x86_64/blender.desktop $HOME/.local/share/applications/
sed -i "s/Exec=blender/Exec=.local\/share\/blender-2.81-linux-glibc217-x86_64\/blender/g" $HOME/.local/share/applications/blender.desktop
```
[![bashrun-url](images/bashrun-url.png)](br:blender)