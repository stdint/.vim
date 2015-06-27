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
set hlsearch
set ignorecase
set smartcase
set cursorline
highlight LineNr ctermfg=grey

"Indentation settings
set copyindent
set expandtab
set tabstop=2
set shiftwidth=2
autocmd FileType make setlocal noexpandtab

"Commands
command W wa
command Q q

"Alias
let mapleader=","
"Shortcut to go to next tab
nnoremap <silent> <tab> :tabnext<CR>
nnoremap <silent> <s-tab> :tabNext<CR>
"Shortcut to edit .vimrc
nnoremap <silent> <leader>ev :e ~/.vim/.vimrc<CR>
nnoremap <silent> <leader>sv :source ~/.vim/.vimrc<CR>

"Plugin settings
let g:CommandTMaxHeight=10
let g:CommandTInputDebounce=200

"Plugin alias
"NerdTree
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
"Tagbar
nnoremap <silent> <leader>tb :TagbarToggle<CR>
"vim-notes
nmap <silent> <leader>N :Note<CR>
