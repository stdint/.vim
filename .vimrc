execute pathogen#infect()
filetype plugin indent on

"General settings
syntax on
set nocompatible
set noswapfile
set hidden
set wildmenu
set background=dark
set ruler
set number
set relativenumber
set hlsearch
set incsearch
set ignorecase
set smartcase
set cursorline
highlight LineNr ctermfg=grey

"Toggle white space characters
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
function! ToggleWhiteSpaceChars()
  if &list == 1
    set nolist
  else
    set list
  endif
endfunc
nnoremap <silent> <C-w> :call ToggleWhiteSpaceChars()<cr>
execute ToggleWhiteSpaceChars()

"Toggle relative number
function! ToggleNumber()
  if &relativenumber == 1
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <silent> <C-n> :call ToggleNumber()<cr>

"Beeping
set noeb
set vb

"Enable mouse use in all modes
set mouse=a

"Indentation settings
set copyindent
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
autocmd FileType make setlocal noexpandtab

"Commands
command W wa
command Q q

"Alias
let mapleader=","
nnoremap ; :
nnoremap : ;
"Shortcut to go to next tab
nnoremap <silent> <tab> :tabnext<cr>
nnoremap <silent> <s-tab> :tabNext<cr>
"Shortcut to edit .vimrc
nnoremap <silent> <leader>ev :e ~/.vim/.vimrc<cr>
nnoremap <silent> <leader>sv :source ~/.vim/.vimrc<cr>
" Turn off highlight
nnoremap <silent> <leader>h :noh<cr>

"Insert mode map
inoremap <silent> - _
inoremap <silent> _ -

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
