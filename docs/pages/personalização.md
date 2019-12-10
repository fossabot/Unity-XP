### Personalização

Se você deseja alterar o tema _GTK_ ou o tema de ícones do sistema, será necessário executar alguns comandos para que os temas da [**Pling Store**](https://www.pling.com) sejam exibidos no [**Unity Tweak Tool**](https://launchpad.net/unity-tweak-tool).

```bash
mkdir -pv ~/.local/share/icons;ln -vs ~/.local/share/icons ~/.icons
mkdir -pv ~/.themes;ln -vs ~/.themes ~/.local/share/themes
```

Lembrando que, apenas temas suportados pelo [**Metacity**](https://www.pling.com/search/projectSearchText/metacity) são compatíveis com o **Unity**.

Outro ponto importante à se observar, é que os aplicativos _Qt_ usam o motor de temas [**Kvantum**](https://github.com/tsujan/Kvantum/tree/master/Kvantum), desse modo, ao mudar o tema _GTK_, esses aplicativos continuarão com o mesmo tema, à menos que você altere o tema manualmente.

Tenha em mente que, nem todos os temas _GTK_ são portados para o _Kvantum_.