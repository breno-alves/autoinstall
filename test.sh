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

echo "installing gdebi"
sudo apt-get -y -f install gdebi