#!/bin/bash

echo "Installing minpac. Make sure you're using Vim 8 or later."
mkdir -p ~/.config/nvim/pack/minpac/opt
cp .vimrc ~/.config/nvim/init.vim
cd ~/.config/nvim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git
echo "minpac is now installed. Reload vim and run :PackUpdate to install packages."
echo "Installing fzf"
cd ~/.config/nvim/pack/bundle/start
git clone https://github.com/junegunn/fzf
~/.config/nvim/pack/bundle/start/fzf/install --bin
echo "Remember to add 'export PATH=\$PATH:~/.vim/pack/bundle/start/fzf/bin' to your .bashrc"
