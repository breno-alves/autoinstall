sudo apt-get -y -f install libpq-dev
sudo apt-get -y -f install python3
sudo apt-get -y -f install python3-pip
python3 -m pip install Django
sudo pip3 install virtualenvwrapper
echo "
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
" >> ~/.zshrc
sudo pip3 install --upgrade setuptools
