#!/usr/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${HOME}"/.config/prezto/^README.md(.N); do
  ln -s "$rcfile" "${HOME}/.${rcfile:t}"
done
