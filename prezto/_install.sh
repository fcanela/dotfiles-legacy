#!/usr/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"

ln -s ${HOME}/.dotfiles/zdotdir/.zshenv ${HOME}/.zshenv
