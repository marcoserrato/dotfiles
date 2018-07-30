set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'davidhalter/jedi-vim'"
Plugin 'klen/python-mode'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'chiel92/vim-autoformat'
Plugin 'scrooloose/nerdtree'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" dPluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on

colorscheme default
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set number
set ignorecase
set ai
set clipboard=unnamed
set nomesg
autocmd FileType python setlocal completeopt-=preview


" NerdTree"

"open NerdTree with Ctrl+n"
map <C-n> :NERDTreeToggle<CR>
" " Make NerdTree ignore files I don't care about (compiled python files,
" etc.)
let NERDTreeIgnore = ['.pyc$', '.out$', '__pycache__']

"PyMode"
let g:pymode_lint = 0
let g:pymode_folding = 0
let g:pymode_rope = 0
" Tunn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Highlight search results
set hlsearch

" Make movement between windows easier - CTRL-{h | j | k | l}
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

set backspace=indent,eol,start

command Pjson execute "%!python -m json.tool"

inoremap jj <ESC>
inoremap kk <ESC>

nnoremap <leader><space> :noh<cr>
