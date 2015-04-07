execute pathogen#infect()
filetype plugin indent on

"General settings
syntax on
set nocompatible
set hidden
set wildmenu
set background=dark
set ruler
set number

"Indentation settings
set copyindent
set expandtab
set tabstop=2
set shiftwidth=2
autocmd FileType make setlocal noexpandtab

"Alias
let mapleader=","
"Shortcut to edit .vimrc
nmap <silent> <leader>ev :e ~/.vim/.vimrc<CR>
nmap <silent> <leader>sv :source ~/.vim/.vimrc<CR>

"Plugin settings
let g:CommandTMaxHeight=10
let g:CommandTInputDebounce=200

"Plugin alias
"NerdTree
nmap <silent> <leader>nt :NERDTreeToggle<CR>
nmap <silent> <leader>nf :NERDTreeFind<CR>
"Tagbar
nmap <silent> <leader>tb :TagbarToggle<CR>
"vim-notes
nmap <silent> <leader>N :Note<CR>
