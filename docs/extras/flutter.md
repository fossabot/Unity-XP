### [Flutter](https://flutter.dev/)
```bash
mkdir -pv ~/.local/share
git clone -b master https://github.com/flutter/flutter ~/.local/share/flutter
echo '# Flutter
export PATH="$PATH:$HOME/.local/share/flutter/bin"' | tee -a ~/.profile
export PATH="$PATH:$HOME/.local/share/flutter/bin"
flutter precache
```
[![bashrun-url](images/bashrun-url.png)](br:flutter)