#!/bin/bash

echo "Installing minpac:"
mkdir -p ~/.vim/pack/minpac/opt
cd ~/.vim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git
echo "minpac is now installed. Reload vim and run :PackUpdate to install packages."
