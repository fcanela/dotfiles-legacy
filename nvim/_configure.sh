#!/bin/bash

NVIM_CONFIG_PATH=${HOME}/.config/nvim
NVIM_DOTFILES_PATH=${HOME}/.dotfiles/nvim
COC_PATH=${HOME}/.config/coc/extensions

echo "[+] Apply nvim configuration, making a backup of the existing one"
echo "-------------------------------"
mkdir -p ${NVIM_CONFIG_PATH} ${COC_PATH} ${HOME}/.hidden/neovim/swap
mv ${NVIM_CONFIG_PATH}/init.vim ${NVIM_CONFIG_PATH}/init.vim.bak 2> /dev/null 
ln -s ${NVIM_DOTFILES_PATH}/init.vim ${NVIM_CONFIG_PATH}/init.vim

echo "[+] Installing Plug plugin manager"
echo "-------------------------------"
curl -fLo ${HOME}/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "[+] Installing coc.nvim plugins and language servers"
echo "-------------------------------"
mkdir -p ${COC_PATH}
cp ${NVIM_DOTFILES_PATH}/coc/package.json ${COC_PATH}
cd ${COC_PATH}
npm install --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

echo "NeoVim configuration finished. Open NeoVim and run :PlugInstall"
