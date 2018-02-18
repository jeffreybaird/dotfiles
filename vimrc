set nocompatible
call plug#begin('~/.vim/plugged')
" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
" defaults for split join are gS and gJ
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-surround'
" vim dispatch and vim test work together
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'
" Git stuff
Plug 'tpope/vim-fugitive'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'ElmCast/elm-vim'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()
let mapleader = ","
"open .vimrc
noremap <leader>v :e ~/.vimrc<cr>
"reload .vimrc
noremap <leader>V :source ~/.vimrc<cr>
"vim-test keys
let test#strategy = "dispatch"
let g:test#preserve_screen = 1
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
"fuzzy finder keys
noremap <leader>f :Files<CR>
noremap <leader>s :Ag<CR>
"Turn off arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Toggle under cursor using F9
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
"toggle indent guides
noremap <leader>i :IndentGuidesToggle<CR>
" Git gutter commands
nmap <leader>h :GitGutterEnable<CR>
nmap <leader>j :GitGutterDisable<CR>

set clipboard=unnamed "use mac clipboard
" who has two thumbs and doesn't use swp files? This guy
set nobackup
set nowritebackup
set noswapfile

" I like line number
set number
" show unwanted whitespace
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
