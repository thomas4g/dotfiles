set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin on

syntax on
set smartindent
set autoindent
set nowrap

set ts=4
set tabstop=4
set shiftwidth=4
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

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

nnoremap <Leader>rtw :%s/\s\+$//e<CR>
