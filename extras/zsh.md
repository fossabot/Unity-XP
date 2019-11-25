### [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
```bash
sudo apt -y install --reinstall zsh
```

### [Oh-my-ZSH](https://ohmyz.sh/)
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### [ZPlugin](https://github.com/zdharma/zplugin)
 - [Syntax highlighting](https://github.com/zdharma/fast-syntax-highlighting)  
 - [Auto suggestions](https://github.com/zsh-users/zsh-autosuggestions)  
 - [ZSH completions](https://github.com/zsh-users/zsh-completions)  

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
sed -i 's/zplugin light zdharma/fast-syntax-highlighting//g' ~/.zshrc
sed -i 's/zplugin light zsh-users/zsh-autosuggestions//g' ~/.zshrc
sed -i 's/zplugin light zsh-users/zsh-completions//g' ~/.zshrc
echo zplugin light zdharma/fast-syntax-highlighting >> ~/.zshrc
echo zplugin light zsh-users/zsh-autosuggestions >> ~/.zshrc  
echo zplugin light zsh-users/zsh-completions >> ~/.zshrc
```

By [**Jonas Gabriel**](https://github.com/jgalmeida93)

[![bashrun-url](images/bashrun-url.png)](br:zsh)