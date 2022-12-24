"==============================================================================
" Vim profile settings
"==============================================================================

" Set leader
let mapleader=","

" General QOL
set encoding=utf-8
set scrolloff=3         " how many lines before/after cursor
set colorcolumn=88      " highlight column for recommended max text length
set title               " window displays file name
set undofile            " undo tree persists after close
set ttyfast             " faster character redraw
set relativenumber      " line numbers are relative

" Command line completion
set wildmenu
set wildmode=list:longest

" Tab settings
set tabstop=8           " number of spaces equal to Tab
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault            " substitute all, not first in line
set incsearch
set hlsearch
set showmatch

" Remaps
nnoremap <leader><space> :noh<cr>
" STOP USING ARROW KEYS FOR MOVEMENT!!!
nnoremap <up>       <nop>
nnoremap <down>     <nop>
nnoremap <left>     <nop>
nnoremap <right>    <nop>
inoremap <up>       <nop>
inoremap <down>     <nop>
inoremap <left>     <nop>
inoremap <right>    <nop>

" File-specific settings 
autocmd Filetype html       setlocal shiftwidth=2 tabstop=2
autocmd Filetype json       setlocal shiftwidth=2 tabstop=2
autocmd Filetype markdown   setlocal norelativenumber 
autocmd Filetype text       setlocal norelativenumber

" Vim plugin manager
" https://github.com/junegunn/vim-plug
" ===============================================
call plug#begin()

" Custom theme
Plug 'NLKNguyen/papercolor-theme'

" Code completion
Plug 'ycm-core/YouCompleteMe'

" Writing plugin
Plug 'preservim/vim-pencil'

" Latex plugin
Plug 'lervag/vimtex'

call plug#end()
" ===============================================

" Set color scheme
set background=dark
colorscheme PaperColor

" Initialize vim-pencil by file type
let g:pencil#wrapModeDefault = 'soft'
augroup pencil
    autocmd!
    autocmd FileType markdown   call pencil#init()
    autocmd FileType text       call pencil#init()
augroup END

" VimTeX settings
filetype plugin indent on
syntax enable
let g:vimtex_view_method = 'zathura'
