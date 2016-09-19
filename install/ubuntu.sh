#!/bin/bash
CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
$CWD/ubuntu-deps.sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y neovim
$CWD/setup.sh
