#!/bin/bash
CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
brew install neovim/neovim/neovim
$CWD/setup.sh

