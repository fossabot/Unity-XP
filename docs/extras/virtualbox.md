### [VirtualBox]()
```bash
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian `lsb_release -cs` contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -qO- https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/virtualbox.gpg
sudo apt update;sudo apt install -y --no-install-recommends virtualbox-6.1
```
[![bashrun-url](images/bashrun-url.png)](br:virtualbox)