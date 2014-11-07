#!/bin/zsh

echo "=> Setting up github ssh"
cp /vagrant/id_rsa $HOME/.ssh/
chmod 600 $HOME/.ssh/id_rsa

echo "=> Setting up zsh prezto"
git clone --recursive https://github.com/mndfcked/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo "=> Setting up dotfiles"
git clone --recursive https://github.com/mndfcked/dotfiles.git ~/.dotfiles
~/.dotfiles/bootstrap.sh

echo "=> Setting go enviroment up"
echo "export GOPATH=/home/vagrant/code/go" >> $HOME/.zprofile
export GOPATH=/home/vagrant/code/go
go get -u github.com/jstemmer/gotags
vim +GoInstallBinaries +qall