#!/usr/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"

ln -s ${HOME}/.dotfiles/zdotdir/.zshenv ${HOME}/.zshenv

mkdir ${HOME}/.zprezto-contrib/
ln -s ${HOME}/.dotfiles/prezto/plugins/zsh-z ${HOME}/.zprezto-contrib/zsh-z
