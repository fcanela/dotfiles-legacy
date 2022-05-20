#!/bin/bash

echo "[+] Configuring directories"
mkdir -p $HOME/.hidden/{desktop,templates,public} $HOME/go/{bin,src,pkg} $HOME/{bin,contexts,cloud,src/github.com/fcanela,tmp,media,downloads/{www,torrent,repo},uncontext}
rm $HOME/.config/user-dirs.dirs
ln -s ${HOME}/.dotfiles/ubuntu/user-dirs.dirs ${HOME}/.config/user-dirs.dirs
