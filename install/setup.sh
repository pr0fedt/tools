#!/bin/bash
CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
NVIM_TOOLS=~/.nvim-tools
# TODO remove comments below
#curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp $CWD/../config/init.vim ~/.config/nvim/init.vim
mkdir $NVIM_TOOLS
cp -R $CWD/../doc $NVIM_TOOLS/doc
cp -R $CWD/../scripts $NVIM_TOOLS/scripts
