#!/bin/bash

echo "[+] Installing an updated version of NeoVim and its dependencies using PPA"
echo "-------------------------------"
sudo apt-get install software-properties-common 
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim python-neovim python3-neovim python-dev python-pip python3-dev python3-pip

echo "[+] Apply nvim configuration, making a backup of the existing one"
echo "-------------------------------"
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak 2> /dev/null 
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
mkdir -p ~/.hidden/neovim/swap

echo "[+] Installing Plug plugin manager"
echo "-------------------------------"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "[+] Installing coc.nvim plugins and language servers"
echo "-------------------------------"
mkdir -p ~/.config/coc/extensions
cp ~/.dotfiles/nvim/coc/package.json ~/.config/coc/extensions/
cd ~/.config/coc/extensions
npm install --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

echo "Finished. Open NeoVim and run :PlugInstall"
