curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get -y -f install nodejs

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get -y -f install yarn

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
