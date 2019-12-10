### Integração automática de AppImage

Para instalar programas empacotados no formato [**AppImage**](https://appimage.org/) no **Unity XP** é muito simples, basta _acessar a página de download do programa_, baixar o pacote e assim que o download é concluído, o programa já estará disponível no menu automaticamente, **nenhum passo adicional é necessário**.

Mas se você gosta de manter seus arquivos bem organizados e não quer deixar os programas na pasta de _Downloads_, pode utilizar o método a seguir, os arquivos **AppImage** ficarão _salvos_ na pasta `~/.local/bin`

Acesse o site **https://appimagehub.com** e navegue até a página do programa que deseja instalar:

![appimagehub](images/appimagehub.png)

Clique em **Install** e em seguida clique no nome do arquivo que será exibido abaixo:

![appimagehub-install](images/appimagehub-install.png)

Cheque o tamanho do arquivo que será baixado e clique em **Install** novamente:

![appimagehub-install-start](images/appimagehub-install-start.png)

Uma janela do [**OCS-URL**](https://www.pling.com/s/OpenSuse-Packages/p/1136805/) será exibida, clique em **OK**:

![ocs-url-confirm](images/ocs-url-confirm.png)

Após esses passos, é só aguardar a conclusão do download.

![ocs-url-download](images/ocs-url-download.png)

O programa estará disponível no _dash_ do **Unity XP**.

![appimage-ao](images/appimage-ao.png)

~~**Aviso**: Na primeira vez que você executar esse procedimento, será necessário reiniciar a sessão, porque a pasta criada pelo **OCS-URL** para armazenar os programas, não estará sendo monitorada pelo **AppImageD**(daemon que faz a integração automática), nas execuções seguintes não será necessário reiniciar a sessão.~~

**Aviso**: Ao executar um programa no formato AppImage, salvo na pasta de _Downloads_, o sistema irá perguntar se você deseja mover o arquivo para a pasta `~/.local/bin`, esse passo é opcional, você pode manter o programa na pasta de _Downloads_.
