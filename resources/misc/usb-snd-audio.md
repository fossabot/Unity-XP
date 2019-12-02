### Tools
```bash
sudo apt install -y build-essential
sudo apt build-dep linux -y
```

### Build
```bash
mkdir -pv snd-usb-audio;cd snd-usb-audio
wget -c https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.1.tar.xz
wget -c https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.3.8.tar.xz
tar -xvf linux-5.4.1.tar.gz
tar -xvf linux-5.3.8.tar.gz
cd linux-5.4.1
cp /lib/modules/`uname -r`/build/.config . -v
cp /lib/modules/`uname -r`/build/Module.symvers . -v
sed -i 's/EXTRAVERSION =/EXTRAVERSION = -xanmod1/g' Makefile
make modules_prepare
cp -varf ../linux-5.3.8/sound/usb/* sound/usb/
make M=sound/usb
sudo cp -varf /lib/modules/5.4.1-xanmod1/kernel/sound/usb/snd-usb-audio.ko /lib/modules/5.4.1-xanmod1/kernel/sound/usb/snd-usb-audio.ko.old
sudo cp -varf ./sound/usb/snd-usb-audio.ko /lib/modules/5.4.1-xanmod1/kernel/sound/usb/snd-usb-audio.ko
```

### Cleanup
```bash
sudo apt autoremove --purge -y build-essential g++ g++-9 libstdc++-9-dev asciidoc asciidoc-base asciidoc-common autoconf automake autopoint autotools-dev bison ca-certificates-java debhelper default-jdk-headless default-jre-headless dh-autoreconf dh-strip-nondeterminism dh-systemd docbook-dsssl docbook-utils docbook-xml docbook-xsl docutils-common dwz flex fonts-font-awesome fonts-lato fonts-lmodern fonts-roboto-slab java-common kernel-wedge libaudit-dev libcap-ng-dev libdebhelper-perl libdw-dev libdw1 libexpat1-dev libfile-stripnondeterminism-perl libiberty-dev libjs-modernizr libjs-sphinxdoc libjs-underscore liblzma-dev libnewt-dev libnuma-dev libosp5 libostyle1c2 libpci-dev libpng-dev libptexenc1 libpython-dev libpython2-dev libpython2.7 libpython2.7-dev libsgmls-perl libslang2-dev libssl-dev libsub-override-perl libteckit0 libtexlua53 libtexluajit2 libtool libudev-dev libunwind-dev libxml2-utils libzzip-0-13 m4 makedumpfile openjade openjdk-11-jdk-headless openjdk-11-jre-headless opensp po-debconf preview-latex-style python-babel-localedata python-dev python2-dev python2.7-dev python3-alabaster python3-babel python3-docutils python3-imagesize python3-jinja2 python3-packaging python3-pygments python3-roman python3-sphinx python3-sphinx-rtd-theme sgml-data sgmlspl sharutils sphinx-common sphinx-rtd-theme-common teckit tex-common texlive-base texlive-binaries texlive-fonts-recommended texlive-formats-extra texlive-latex-base texlive-latex-extra texlive-latex-recommended texlive-pictures texlive-plain-generic texlive-xetex tipa uuid-dev xml-core xmlto xsltproc
sudo rm -rfv /usr/share/fonts/woff/font-awesome /usr/share/fonts/truetype/font-awesome /usr/share/fonts/svg/font-awesome /usr/share/fonts/opentype/font-awesome /usr/share/fonts/eot/font-awesome /usr/share/fonts/truetype/lato /usr/share/fonts/truetype/roboto/slab /etc/xml /usr/share/fonts/type1/texlive-fonts-recommended /usr/share/texmf/fonts/opentype/public/lm-math /usr/share/texmf/fonts/opentype/public/lm
```