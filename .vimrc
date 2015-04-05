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

"Plugin alias
"NerdTree
nmap <silent> <leader>nt :NERDTreeToggle<CR>
"Tagbar
nmap <silent> <leader>tb :TagbarToggle<CR>
