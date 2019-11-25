### [Chromium](https://pt.wikipedia.org/wiki/Chromium)
```bash
sudo rm -rfv /etc/apt/sources.list.d/saiarcot895-ubuntu-chromium-dev* /etc/apt/trusted.gpg.d/saiarcot895_ubuntu_chromium-dev*
sudo add-apt-repository -y ppa:saiarcot895/chromium-dev
sudo apt install -y --reinstall chromium-browser
```

### [Widevine](https://www.widevine.com/)
```bash
mkdir -pv widevine;cd widevine
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
ar -x google-chrome-stable_current_amd64.deb;tar -Jxvf data.tar.xz
sudo cp -rfv opt/google/chrome/WidevineCdm/ /usr/lib/chromium-browser/;cd ..;rm -rfv widevine
```
[![bashrun-url](images/bashrun-url.png)](br:chromium)

### **Chave API**

###### Alguns recursos do Chromium, incluindo o Sync, exigem uma chave de API, que não está incluída nos pacotes instalados.
###### Para usar esses recursos, siga as 11 etapas indicadas:
###### http://www.chromium.org/developers/how-tos/api-keys.
###### Em seguida, abra o arquivo `~/.profile` localizado na sua pasta pessoal (você precisará ver os arquivos ocultos) e adicione as três linhas a seguir ao final do arquivo (em uma nova linha):

###### `export GOOGLE_API_KEY="api_key"`
###### `export GOOGLE_DEFAULT_CLIENT_ID="client_id"`
###### `export GOOGLE_DEFAULT_CLIENT_SECRET="client_secret"`

###### Substitua o que está entre aspas (após o sinal `=` em cada linha) pelo valor apropriado.
###### Você precisará fazer logoff e logon novamente (ou reiniciar, se preferir) para que o Chromium use as chaves.