#!/bin/sh

# Cleanup
rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.vimrc
rm -rf ~/.config/nvim
rm -rf ~/.oh-my-zsh

# Update and install prerequisites
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y git python3-pip python3-venv python3-neovim python3-jedi zsh nodejs npm fzf neovim tree 

# NodeJS & npm
sudo npm install n -g
sudo n stable

# Neovim setup
mkdir -p ~/.config/nvim/autoload
cp config_files/.vimrc ~/.config/nvim/init.vim

# Tmux setup
cp config_files/.tmux.conf ~/.tmux.conf

# Oh-my-zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change default shell to zsh
chsh -s $(which zsh)

# Additional zsh plugins and themes
sudo apt install -y powerline fonts-powerline zsh-syntax-highlighting
cp config_files/.zshrc ~/.zshrc

# Git setup
git config --global user.name "Amir"
git config --global user.email "harvard.amir@gmail.com"
ssh-keygen -b 4096



