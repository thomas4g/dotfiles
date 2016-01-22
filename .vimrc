set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin on

syntax on
set smartindent
set autoindent
set nowrap

set mouse=a
set ts=4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set number

set t_Co=256

"set background=dark
""colorscheme solarized
colorscheme distinguished 
hi Normal ctermbg=None

set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
highlight ColorColumn ctermbg=136
set colorcolumn=100
set wrap

map j gj
map k gk

nnoremap <Leader>rtw :%s/\s\+$//e<CR>

set foldmethod=indent
set nofoldenable
set foldlevel=4

au BufNewFile,BufRead *.gradle set filetype=groovy

