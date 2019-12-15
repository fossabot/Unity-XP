O **Unity eXPerience** é um projeto de prova de conceito, que visa a possibilidade de usar o ambiente gráfico [**Unity**](https://en.wikipedia.org/wiki/Unity_%28user_interface%29) na última versão disponível do _**Ubuntu**_.

O sistema usa como _base_ o [**Ubuntu 19.10**](https://ubuntu.com) e o kernel é o [**XanMod**](https://xanmod.org/).

![GitHub Actions badge](https://github.com/rauldipeas/Unity-XP/workflows/Unity%20XP%20%28ISO%29/badge.svg)
![SourceForge badge](https://img.shields.io/sourceforge/dm/unity-xp.svg)
![SourceForge badge](https://img.shields.io/sourceforge/dw/unity-xp.svg)
![SourceForge badge](https://img.shields.io/sourceforge/dd/unity-xp.svg)
![SourceForge badge](https://img.shields.io/badge/-Telegram-blue?style=flat&logo=telegram)

### Faça você mesmo
Você pode _compilar a imagem por sua conta e risco_, usando os comandos _abaixo_:

 - **Instalando as dependências necessárias para compilação**
```bash
sudo apt install apt-transport-https debootstrap grub-efi-amd64-signed mtools squashfs-tools xorriso
```
 - **Baixando os arquivos necessários para a compilação**
```bash
git clone https://github.com/rauldipeas/Unity-XP unity-xp-source
```

 - **Compilando a imagem**
```bash
cd unity-xp-source
bash code/build.sh
```

Após a compilação, a imagem de instalação estará salva aqui: `~/Unity-XP/unity-xp-19.10-amd64.iso`

O tempo de compilação **pode variar**, _**de acordo com a capacidade de processamento do seu hardware e a velocidade da sua internet**_, no meu notebook **IdeaPad-320** com processador **i7 7500U**, **8gb de RAM** e um **SSD**, usando uma conexão de **60mbps**, demora em torno de _30 minutos_.

O programa recomendado pra gravar a imagem no pendrive é o [**Etcher**](https://www.balena.io/etcher/).

Após a instalação do sistema, **para se manter em dia com as atualizações _deste projeto_**, será necessário executar o comando _abaixo_:

```bash
bash <(curl -sL https://git.io/unity-xp-update)
```

Você pode usar as opções `-s` ou `-y` para instalar automaticamente todas as atualizações.