### [ASDF-VM](https://asdf-vm.com)
```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf;cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
sed -i 's/. $HOME\/.asdf\/asdf.sh//g' ~/.bashrc
sed -i 's/. $HOME\/.asdf\/completions\/asdf.bash//g' ~/.bashrc
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
```
[![bashrun-url](images/bashrun-url.png)](br:asdf-vm)