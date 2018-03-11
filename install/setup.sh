#!/bin/bash
CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
NVIM_TOOLS=~/.nvim-tools

[ ! -d "~/.config/nvim" ] && mkdir ~/.config/nvim
[ ! -d "$NVIM_TOOLS" ] && mkdir $NVIM_TOOLS
[ -f "~/.config/nvim/init.vim" ] && rm -f /.config/nvim/init.vim

# TODO remove comments below
# OSX
# curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Linux
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip install neovim
cp $CWD/../config/init.vim ~/.config/nvim/init.vim
cp -R $CWD/../doc $NVIM_TOOLS/doc
cp -R $CWD/../scripts $NVIM_TOOLS/scripts
cp -R $CWD/../default $NVIM_TOOLS/default

