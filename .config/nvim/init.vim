" Sheldon Burks Neovim Config
" Contact Info: sheldon.burks@gmail.com
" Github: www.github.com/SheldonB

""""""""""""""""""""""""""""""""""""""""""""
"	        	      General		               "
""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

"set rtp+=~/.config/nvim/bundle/Vundle.vim
"call vundle#begin('~/.config/nvim/bundle')

call plug#begin('~/.config/nvim/plugged')

" Theme Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" Text Editing Plugins
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'

" Search plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Completion Plugins
Plug 'Shougo/deoplete.nvim'

" Linting Plugins
Plug 'w0rp/ale'

" Python Plugins
Plug 'zchee/deoplete-jedi'

" Javascript / Typescript Plugins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

call plug#end()

let mapleader="\<Space>"

"Turn an relative line numbers
set relativenumber

"Show the actual number cursor line
set number

"don't let Vim back up my files
set nobackup
set noswapfile

"Remember more commands
set history=1000

"Many more undo levels
set undolevels=1000

"Show status bar always
set laststatus=2

"Make windows usable
set hidden

"not forsure what this does, will find out
set lazyredraw

"set past toggle
set pastetoggle=<F2>

"Auto read files if they change
set autoread

"Use custom cursor
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Enable Mouse Usage
set mouse=a
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"	        	    Colors and Fonts                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

colorscheme jellybeans
set background=dark

let g:airline_powerline_fonts=1

"set terminal colors to 256
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""
"             Text, tab, and indent                "
""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guifont=Source\ Code\ Pro\ SemiBold:h12
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

"make navigating splits easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Make moving between buffers easier
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>

"buffer delete
noremap <leader>bd :bd<CR>

"Remove all trailing whitespace
nnoremap <leader>rw :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Keybindings                 "
""""""""""""""""""""""""""""""""""""""""""""""""""

" Allows for tabbing through deoplete suggestions
imap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction"}}}"


" FZF Bindings
nnoremap <leader>f :FZF<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Settings                    "
""""""""""""""""""""""""""""""""""""""""""""""""""
"Airline Settings
let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_working_path_mode = 'ra'

"Enable Deoplete
let g:deoplete#enable_at_startup = 1

"Auto Close Deoplete Preview
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
