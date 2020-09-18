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
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-latex/vim-latex'
Plugin 'leafgarland/typescript-vim'
Plugin 'burnettk/vim-angular'
Plugin 'motus/pig.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'neo4j-contrib/cypher-vim-syntax'
Plugin 'stephpy/vim-yaml'

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
set background=dark
colorscheme PaperColor
"colorscheme solarized
"colorscheme distinguished
"colorscheme pencil
"colorscheme rakr-light
"colorscheme laederon
highlight LineNr ctermfg=32 ctermbg=none
highlight Normal ctermbg=none ctermfg=none
highlight NonText ctermbg=none
highlight CursorLine ctermbg=24
highlight CursorColumn ctermbg=24
highlight CursorLineNr ctermbg=33 ctermfg=white
set cursorline
"set cursorcolumn

set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
"let g:airline_theme='powerlineish'
"let g:airline_theme='pencil'
let g:pencil_terminal_italics=1

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
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

let g:syntastic_java_checkstyle_classpath = '~/dotfiles/checkstyle/checkstyle-6.19-all.jar'
"let g:syntastic_java_checkstyle_conf_file = '~/dotfiles/checkstyle/google_checks.xml'
let g:syntastic_java_checkstyle_conf_file = '~/dotfiles/checkstyle/sun_checks.xml'

let g:syntastic_java_checkers = ['checkstyle']
let g:syntastic_javascript_checkers = ['standard']

let g:syntastic_python_checkers = ['pyflakes']

let g:ctrlp_custom_ignore = '\.class'

set backspace=2

autocmd BufRead,BufNewFile *.js setlocal ts=2 shiftwidth=2 expandtab

"autocmd bufwritepost *.js silent !standard-format -w %
"set autoread
set ff=unix

let g:vundle_default_git_proto='git'

let g:syntastic_html_tidy_ignore_errors=[
    \" proprietary attribute \"ng-",
    \" proprietary attribute \"(click)",
    \" proprietary attribute \"*ng"]

let g:syntastic_tex_lacheck_quiet_messages = { 'regex': '\Vpossible unwanted space at' }

set expandtab

" how-to see the non-visible while spaces
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
:set tabstop=16
:set softtabstop=4
:set list
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" :set list
" but hei how-to unset the visible tabs ?!
" :set nolist
  
set wildmenu

let g:vim_markdown_folding_level = 6
