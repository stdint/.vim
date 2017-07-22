call pathogen#infect()
filetype plugin indent on

syntax enable
"Colors
set background=dark
colorscheme molokai
" Currently only implemented the incremental way
nnoremap <silent> <C-c> :call NextColor(0)<CR>
nnoremap <silent> <C-C> :call NextColor(1)<CR>

"General settings
set nocompatible
set noswapfile
set hidden
set wildmenu
set ruler
set hlsearch
set incsearch
set ignorecase
set smartcase
set cursorline
highlight LineNr ctermfg=grey
"80 characters setting
let &colorcolumn=join(range(81,999),",")
"Beeping
set noeb
set vb
"Enable mouse use in all modes
set mouse=a
"Tags exploration
set tags=./tags;

" Movements
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> 0 g0
nnoremap <silent> $ g$
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>

"Go back to previous buffer
nnoremap <silent> gb <C-^>

"Toggle white space characters
set listchars=tab:␉·,trail:␠,nbsp:⎵
function! ToggleWhiteSpaceChars()
  if &list == 1
    set nolist
  else
    set list
  endif
endfunc
nnoremap <silent> <F9> :call ToggleWhiteSpaceChars()<cr>

"Toggle relative number
function! ToggleNumber()
  if &relativenumber == 1
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <silent> <C-n> :call ToggleNumber()<cr>

let g:richformat = 1
function! ToggleRichFormatForEasyCopy()
  if g:richformat == 1
    set list
    set nu
    set relativenumber
    let g:richformat = 0
  else
    set nolist
    set nonu
    set norelativenumber
    let g:richformat = 1
  endif
endfunc
nnoremap <silent> <F10> :call ToggleRichFormatForEasyCopy()<cr>
execute ToggleRichFormatForEasyCopy()

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
let mapleader = ","
nnoremap ; :
nnoremap : ;
"Folding
"TODO need to make it better
set foldmethod=manual
nnoremap <silent> <leader>f za
vnoremap <silent> <leader>f zf
"Shortcut to go to next tab
nnoremap <silent> <tab> :tabnext<cr>
nnoremap <silent> <s-tab> :tabNext<cr>
"Shortcut to edit .vimrc
nnoremap <silent> <leader>ev :e ~/.vim/.vimrc<cr>
nnoremap <silent> <leader>sv :source ~/.vim/.vimrc<cr>
"Turn off highlight
nnoremap <silent> <leader>h :noh<cr>

"Plugin settings
"Plugged
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'Raimondi/delimitMate'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/syntastic'
Plug 'flazz/vim-colorschemes', { 'do': 'rm ~/.vim/bundle/colorschemes; ln -s ~/.vim/plugged/vim-colorschemes ~/.vim/bundle/colorschemes'}
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'mileszs/ack.vim'
Plug 'stdint/focus.vim'
call plug#end()

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><BS> neocomplete#smart_close_popup(). "\<C-h>"
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><Space> pumvisible() ? "\<C-v>\<Space>" : "\<Space>"
" Enable omni completion.⏎
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS⏎
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags⏎
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS⏎
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete⏎
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags"
" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' _std=c++11 _stdlib=libc++'
" ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev ack Ack!
nnoremap <silent> <Leader>a "zyiw:Ack!<Space><C-R><C-W><cr>
nnoremap <Leader>A :Ack!<Space>

"Plugin alias
"NerdTree
let NERDTreeShowHidden = 1
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
"Tagbar
nnoremap <silent> <leader>tb :TagbarToggle<CR>
"vim-notes
nmap <silent> <leader>N :Note<CR>
"focus.vim
nnoremap <leader>ff :FocusArchiveFocus<CR>
nnoremap <leader>fr :FocusRestore<CR>

if filereadable("~/.vimrc.local")
  source ~/.vimrc.local
endif

