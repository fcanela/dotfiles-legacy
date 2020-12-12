#!/bin/bash

echo "[+] Configuring directories"
mkdir -p $HOME/.hidden/{desktop,templates,public} $HOME/{bin,contexts,src/github.com/fcanela,pkg,tmp,media,downloads/www}
rm $HOME/.config/user-dirs.dirs
ln -s ${HOME}/.dotfiles/ubuntu/user-dirs.dirs ${HOME}/.config/user-dirs.dirs
