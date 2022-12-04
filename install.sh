#!/bin/bash

#remove exisiting local config
sudo rm -rf ./deia.zsh_theme

#clone repo and copy into oh-my-zsh folder
git clone https://github.com/AOSXAP/deia.zsh_theme.git
cd ./deia.zsh_theme && cp ./deia.zsh-theme ~/.oh-my-zsh/themes/

#reconfig zshrc file
sed -i 's/.*ZSH_THEME=.*/ZSH_THEME="deia"/' ~/.zshrc 
