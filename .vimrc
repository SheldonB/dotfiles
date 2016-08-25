" Sheldon Burks .vimrc
" Contact Info: sheldon.burks@gmail.com
" Github: www.github.com/SheldonB

""""""""""""""""""""""""""""""""""""""""""""""""""""
"	        	General		               		   "
""""""""""""""""""""""""""""""""""""""""""""""""""""
"vi is old you know?
set nocompatible
filetype off

"Setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"Vundle Plugins
"Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'edkolev/tmuxline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

"make backspace work correctly
set backspace=2

"Set the leader key
let mapleader="\<Space>"

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

"Auto read files if they change
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"	        	Colors and Fonts                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

"colorscheme jellybeans
colorscheme solarized
set background=dark

let g:airline_powerline_fonts=1

"set terminal colors to 256
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""
"             Text, tab, and indent                "
""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Source\ Code\ Pro\ SemiBold:h12
"use spaces instead of tabs
set expandtab

"Use smart tabs
set smarttab

"set tab config
set tabstop=2
set shiftwidth=2

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
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>

"Remove all trailing whitespace
nnoremap <leader>rw :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Keybindings                 "
""""""""""""""""""""""""""""""""""""""""""""""""""
"T-Comment Bindings
noremap <leader>c :TComment<cr>

"NERDtree Bindings
noremap <leader>n :NERDTreeToggle<cr>

"CtrlP Bindings
nnoremap <leader>cb :CtrlPBuffer<cr>
nnoremap <leader>p  :CtrlP<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Settings                    "
""""""""""""""""""""""""""""""""""""""""""""""""""
"Airline Settings
let g:airline#extensions#tabline#enabled = 1

"Do not throw an error in Angular Apps
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

"Keybinding to Expand a Snippet
let g:UltiSnipsExpandTrigger='<C-x>'

"Use JSX Syntax in normal JS files
let g:jsx_ext_required=0

"Syntasitc Javascript settings
let g:syntastic_javascript_checkers=['eslint']

"Syntastic Python settings
let g:syntastic_python_python_exec='/usr/local/bin/python3'
let g:syntastic_python_checkers=['flake8']

"Sytastic TypeScript settings
let g:syntastic_typescript_tsc_fname=''

"set working directory for CtrlP
let g:ctrlp_working_path_mode = 'ra'

"Do no search node_modules
set wildignore +=*/node_modules/*
