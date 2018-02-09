set nocompatible
call plug#begin('~/.vim/plugged')
" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'janko-m/vim-test'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ElmCast/elm-vim'
Plug 'kien/ctrlp.vim'

call plug#end()
let mapleader = ","
"open .vimrc
noremap <leader>v :e ~/.vimrc<cr>
"reload .vimrc
noremap <leader>V :source ~/.vimrc<cr>
"fuzzy finder keys
let test#strategy = "dispatch"
let g:test#preserve_screen = 1
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
noremap <leader>f :Files<CR>
noremap <leader>s :Ag<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
set clipboard=unnamed "use mac clipboard
set nobackup
set nowritebackup
set noswapfile
set number
set list
set foldmethod=manual
" indention and tabs
set softtabstop=0
set shiftwidth=2
set tabstop=2
set expandtab
:au FocusLost * silent! wa
autocmd BufWritePre * %s/\s\+$//e
set smartcase
set ignorecase

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" be smart about searching
set smartcase
set ignorecase

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_haml_checkers = ['haml_lint']
let g:syntastic_quiet_messages = { "type": "style" }
let g:indent_guides_auto_colors = 0
:au FocusLost * silent! wa
autocmd BufWritePre * %s/\s\+$//e
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
