call plug#begin('~/.vim/plugged')
  Plug 'editorconfig/editorconfig-vim'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'	
  Plug 'isRuslan/vim-es6'
call plug#end()

set ruler               
set number

command ToolsHelp !cat ~/.nvim-tools/doc/cmd.md
command OpenConfig sp ~/.config/nvim/init.vim
