call plug#begin('~/.vim/plugged')
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  Plug 'godlygeek/tabular'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'isRuslan/vim-es6'
  Plug 'mxw/vim-jsx'
call plug#end()

" Common settings
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " forces true color
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Changes cursor to a line on insert mode
set termguicolors " Enables truecolor in neovim >= 0.1.5
set nowrap
set ruler
set number
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list
set background=dark
set bg=dark
set cursorline    " Highlight the line where the cursor is
set showbreak=↪

" Plugin settings
let g:jsx_ext_required = 0

" Commands
command CreateEditorConfig cp ~/.nvim-tools/default/.editorconfig .
command ToolsHelp !cat ~/.nvim-tools/doc/cmd.md
command OpenConfig sp ~/.config/nvim/init.vim

" Keyboard mappings
map <C-n> :NERDTreeToggle<CR>
map <F2> :ToolsHelp<CR>
map <F3> :OpenConfig<CR>

" Additional file extensions
au BufRead,BufNewFile *.mjs set filetype=javascript

