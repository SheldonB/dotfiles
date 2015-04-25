" Sheldon Burks .vimrc
" Contact Info: sheldon.burks@gmail.com
" Github: www.github.com/SheldonB

""""""""""""""""""""""""""""""""""""""""""""""""""""
"	        	General		               		   "
""""""""""""""""""""""""""""""""""""""""""""""""""""
"setup pathogen
execute pathogen#infect()
filetype plugin indent on

"vi is old you know?
set nocompatible

"make backspace work correctly
set backspace=2

"Set the leader key
let mapleader=","

"Turn an line numbers
"or relative numbering
"set number
set relativenumber

"don't let Vim back up my files
set nobackup
set noswapfile

"Remember more commands
set history=1000

"Many more undo levels
set undolevels=1000

"Show status bar always
set laststatus=2

"Not for sure what this does but
"I was told to put this here
set hidden

"not forsure what this does, will find out
set lazyredraw

"set past toggle
set pastetoggle=<F2>
" List of All installed Plugins
" T-Comment
" NERDTree
" Ctrl-P
" delimitMate
" Snipmate
" Syntastic
" vim-airline
" tmuxline
" fugitive
" vim-bufferline
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"	        	Colors and Fonts                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

" colorscheme jellybeans
colorscheme solarized 
set background=dark

let g:airline_powerline_fonts=1

"set terminal colors to 256
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""
"             Text, tab, and indent                "
""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Source\ Code\ Pro\ SemiBold:h14
"use spaces instead of tabs
set expandtab

"Use smart tabs
set smarttab

"set tab config
set tabstop=4
set shiftwidth=4

set ai "Auto indent
set si "Smart indent
set wrap "Warp lines

"turn matching parenthesis red
hi MatchParen cterm=bold ctermbg=none ctermfg=red

""""""""""""""""""""""""""""""""""""""""""""""""""
"              Custom Keybindings                "
""""""""""""""""""""""""""""""""""""""""""""""""""
"Breaking bad habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Mapping for save
inoremap <leader>s <esc>:w<cr>a
nnoremap <leader>s :w<cr>

"Shortcut to my .vimrc
noremap <leader>rc :e $MYVIMRC<cr>

"buffer delete
noremap <leader>d :bd<CR>

"make navigating splits easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Make moving between buffers easier
" nnoremap <leader>n :bn<CR>
" nnoremap <leader>p :bp<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Keybindings                 "
""""""""""""""""""""""""""""""""""""""""""""""""""
"T-Comment Bindings
noremap <leader>c :TComment<cr>

"NERDtree Bindings
noremap <C-n> :NERDTreeToggle<cr> 

"CtrlP Bindings
inoremap <leader>cb <esc>:CtrlPBuffer<cr>a
nnoremap <leader>cb :CtrlPBuffer<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Settings                    "
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

