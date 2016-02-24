set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'derekwyatt/vim-scala'
"Plugin 'reedes/vim-colors-pencil'
"Plugin 'rakr/vim-rakr-light'
"Plugin 'Donearm/Laederon'
Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'scrooloose/syntastic'

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

set background=light
"highlight LineNr ctermfg=grey ctermbg=None
colorscheme PaperColor
"colorscheme solarized
"colorscheme distinguished 
"colorscheme pencil 
"colorscheme rakr-light
"colorscheme laederon
"hi Normal ctermbg=None


set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='PaperColor'
"let g:airline_theme='powerlineish'
"let g:airline_theme='pencil'
let g:pencil_terminal_italics=1

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
highlight ColorColumn ctermbg=136
autocmd BufRead,BufNewFile   *.java setlocal colorcolumn=100
set wrap

map j gj
map k gk

nnoremap <Leader>rtw :%s/\s\+$//e<CR>

set foldmethod=indent
set nofoldenable
set foldlevel=4

au BufNewFile,BufRead *.gradle set filetype=groovy
set paste
set laststatus=2

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
