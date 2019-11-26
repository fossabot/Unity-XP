### [PJe office](http://www.pje.jus.br/wiki/index.php/PJeOffice)
```bash
wget http://ftp.pje.jus.br/pje/programs/pje-office/pje-office_amd64.deb --no-check-certificate
sudo apt install -y ./pje-office_amd64.deb;rm -rfv pje-office*.deb
sudo wget -O /usr/share/applications/pjeoffice.desktop https://github.com/rauldipeas/Unity-XP/raw/master/resources/launchers/pjeoffice.desktop
```
[![bashrun-url](images/bashrun-url.png)](br:pjeoffice)