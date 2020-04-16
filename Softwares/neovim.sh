sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y
sudo wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
sudo chmod +x nvim
sudo mv nvim /usr/bin
mkdir -p ~/.config/nvim
cp ../Dotfiles/init.vim ~/.config/nvim
