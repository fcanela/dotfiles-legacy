#!/bin/bash

echo "[+] Apply tmux configuration, making a backup of the existing one"
echo "-------------------------------"
mv ${HOME}/.tmux.conf ${HOME}/.tmux.conf.bak 2> /dev/null 
ln -s ${HOME}/.dotfiles/tmux/tmux.conf ${HOME}/.tmux.conf
