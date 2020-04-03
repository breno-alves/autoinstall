#!/usr/bin/env bash

echo "-------------------------------"
echo "-     starting config         -"
echo "-------------------------------"

echo "software properties"
sudo apt-get -y -f install software-properties-common

echo "installing git..."
sudo apt-get -y -f install git

echo "installing gedit"
sudo apt-get -y -f install gedit

echo "installing vim"
sudo apt-get -y -f install vim-gtk3

echo "installing nvim"
sudo apt-get -y -f install neovim

echo "installing curl"
sudo apt-get -y -f install curl

echo "installing wget"
sudo apt-get -y -f install wget

echo "installing net-tools"
sudo apt-get -y -f install net-tools

echo "installing arandr"
sudo apt-get -y - f install arandr

echo "installing gdebi"
sudo apt-get -y -f install gdebi

echo "installing zsh"
sudo apt-get -y -f install zsh

echo "installing oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing terminator"
sudo apt-get -y -f install terminator

echo "installing rofi"
sudo apt-get -y -f install rofi

echo "
#!/usr/bin/env python3
import subprocess
import sys

# defining keys & strings to be used
key = \"org.gnome.settings-daemon.plugins.media-keys custom-keybindings\"
subkey1 = key.replace(\" \", \".\")[:-1]+\":\"
item_s = \"/\"+key.replace(\" \", \"/\").replace(\".\", \"/\")+\"/\"
firstname = \"custom\"
# get the current list of custom shortcuts
get = lambda cmd: subprocess.check_output([\"/bin/bash\", \"-c\", cmd]).decode(\"utf-8\")
array_str = get(\"gsettings get \"+key)
# in case the array was empty, remove the annotation hints
command_result = array_str.lstrip(\"@as\")
current = eval(command_result)
# make sure the additional keybinding mention is no duplicate
n = 1
while True:
    new = item_s+firstname+str(n)+\"/\"
    if new in current:
        n = n+1
    else:
        break
# add the new keybinding to the list
current.append(new)
# create the shortcut, set the name, command and shortcut key
cmd0 = 'gsettings set '+key+' \"'+str(current)+'\"'
cmd1 = 'gsettings set '+subkey1+new+\" name '\"+sys.argv[1]+\"'\"
cmd2 = 'gsettings set '+subkey1+new+\" command '\"+sys.argv[2]+\"'\"
cmd3 = 'gsettings set '+subkey1+new+\" binding '\"+sys.argv[3]+\"'\"

for cmd in [cmd0, cmd1, cmd2, cmd3]:
    subprocess.call([\"/bin/bash\", \"-c\", cmd])
" >> /tmp/script.py

python3 /tmp/script.py 'open rofi' 'rofi -show combi' '<Super>d'
sudo rm -f /tmp/script.py
echo "<Super> + d -> open rofi"

echo "installing snap"
sudo apt-get -y -f install snapd

if [[ $PATH != *"/snap/bin"* ]]; then
    echo "export PATH=$PATH:/snap/bin" >> ~/.zshrc
    echo "snap path set"
fi

echo "installing spotify"
sudo snap install spotify

echo "installing discord"
sudo snap install discord

echo "installing visual code"
sudo snap install code --classic

echo "installing intellij"
sudo snap install intellij-idea-ultimate --classic --edge

echo "installing python"
sudo apt-get -y -f install python3
sudo apt-get -y -f install python3-pip

echo "installing django.."
python3 -m pip install Django

echo "installing node..."
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get -y -f install nodejs

echo "installing yarn..."
sudo apt-get -y -f install yarn

echo "installing brave..."
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
sudo apt update
sudo apt -y -f install brave-browser

echo "installing OBS..."
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt -y -f install obs-studio ffmpeg

echo "installing steam..."
sudo apt-get -y -f install steam

echo "installing gimp..."
sudo apt-get -y -f install gimp

echo "installing qbittorrent.."
sudo apt-get -y -f install qbittorrent

# may not work 
#echo "installing stremio"
#wget -P /tmp/ https://dl.strem.io/linux/v4.4.106/stremio_4.4.106-1_amd64.deb
#sudo gdebi /tmp/stremio_4.4.106-1_amd64.deb

echo "DONE!"
