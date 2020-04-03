git clone https://github.com/surajmandalcell/elementary-x.git ~/.themes/elementary-x
gsettings set org.gnome.desktop.interface gtk-theme "elementary-x"
sudo sh ~/.themes/elementary-x/install_fixed_icons.sh
sudo sh ~/.themes/elementary-x/install_plank_themes.sh

echo "installing gnome-tweaks"
sudo apt-get -y -f install gnome-tweaks

echo "installing elementary-tweaks"
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt install elementary-tweaks
