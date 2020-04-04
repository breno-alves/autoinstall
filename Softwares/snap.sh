sudo apt-get -y -f install snapd

if [[ $PATH != *"/snap/bin"* ]]; then
    echo "export PATH=$PATH:/snap/bin" >> ~/.zshrc
    echo "snap path set"
fi