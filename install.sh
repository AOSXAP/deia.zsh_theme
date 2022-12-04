#!/bin/bash

#remove exisiting local config
sudo rm -rf ./deia.zsh_theme

#clone repo and copy into oh-my-zsh folder
cp ./deia.zsh-theme $USER/.oh-my-zsh/themes/

#reconfig zshrc file
sed -i 's/.*ZSH_THEME=.*/ZSH_THEME="deia"/' $USER/.zshrc
