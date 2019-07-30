#!/bin/bash

echo "Installing minpac. Make sure you're using Vim 8 or later."
mkdir -p ~/.vim/pack/minpac/opt
cd ~/.vim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git
echo "minpac is now installed. Reload vim and run :PackUpdate to install packages."
echo "Installing fzf"
cd ~/.vim/pack/bundle/start
git clone https://github.com/junegunn/fzf
~/.vim/pack/bundle/start/fzf/install --bin
echo "Remember to add 'export PATH=\$PATH:~/.vim/pack/bundle/start/fzf/bin' to your .bashrc"
