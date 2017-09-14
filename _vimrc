" Vundle usage  ==============================================================
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=c:/vimfiles/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'vundle/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup',{'rtp': 'newL9'}
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'YankRing.vim'  
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/vim-easy-align'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Environment setting ========================================================
syntax on
set exrc
set secure
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set colorcolumn=110
set t_Co=256 
highlight ColorColumn ctermbg=darkgray
set showmatch
set incsearch
set backspace=2
set cursorline
set number
set relativenumber
set autochdir
set foldenable
set scrolloff=3
:colorscheme evening
highlight Comment ctermfg=cyan
highlight Search term=reverse ctermbg=4 ctermfg=7
set swapfile
set noic
set dir=c:\swap
let Tlist_Ctags_Cmd = 'C:\tools\ctags\ctags.exe'
" Key map Binding  ===========================================================
nmap <F12> :NERDTreeToggle<CR><C-w>L
nmap <F11> :TlistToggle<CR>
nmap <F2> :Bclose<CR>
nmap <C-F2> :b#<CR>
nmap <C-TAB> :bnext<CR>
nmap <C-q> :bprevious<CR>
nmap <C-k> d$<CR>
nmap <C-r> bve 

imap <C-f> <Right>
imap <C-b> <Left>
imap <C-d> <Del>

vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

map <kDivide> :s/^/\/\//<Enter>
map <kMultiply> :s/^\/\///<Enter>filetype off

" Encoding setting  ==========================================================
set encoding=utf-8 
set termencoding=utf-8  
set fileencodings=utf-8,ucs-bom,shift-jis,latin1,big5,gb18030,gbk,gb2312,cp936  
if has("win32")
set fileencoding=big5
else
set fileencoding=utf-8
endif
set guifont=Consolas:h12
set guifontwide=NSimsun\:h12 

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"=============================================================================
