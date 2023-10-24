#!/bin/sh

sudo apt install nodejs -y
sudo apt install npm -y
sudo npm install n -g
sudo n stable
sudo apt remove vim

mkdir -p ~/.config/nvim/
mkdir -p ~/.config/nvim/autoload

cp .vimrc ~/.config/nvim/init.vim

# run :PlugInstall
