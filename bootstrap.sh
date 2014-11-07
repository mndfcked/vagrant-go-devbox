#!/bin/sh
echo "=> Installing required packages"
apt-get install git -y
apt-get install vim-nox -y
apt-get install golang-go -y
apt-get install mercurial -y
apt-get install zsh -y
apt-get install ctags -y
export PATH=$PATH:/usr/local/go/bin

echo "=> Setting default shell to zsh"
chsh -s /bin/zsh vagrant