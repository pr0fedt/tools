call plug#begin('~/.vim/plugged')
  Plug 'godlygeek/tabular'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'	
  Plug 'isRuslan/vim-es6'
call plug#end()

set ruler               
set number
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

command ToolsHelp !cat ~/.nvim-tools/doc/cmd.md
command OpenConfig sp ~/.config/nvim/init.vim

map <C-n> :NERDTreeToggle<CR>
