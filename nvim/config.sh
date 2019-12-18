#!/bin/bash

# Install updated version from PPA
sudo apt-get install software-properties-common 
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim python-neovim python3-neovim python-dev python-pip python3-dev python3-pip


# Plug plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# coc.nvim for code completion
mkdir -p ~/.config/coc/extensions
cp coc/extensions/package.json ~/.config/coc/extensions/
cd ~/.config/coc/extensions
npm install --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

echo "Open neovim and run :PlugInstall"
