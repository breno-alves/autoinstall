sudo apt-get update 
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
sudo echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
sudo echo 'eval "$(rbenv init -)"' >> ~/.zshrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc
exec $SHELL

rbenv install 2.5.1
rbenv global 2.5.1
