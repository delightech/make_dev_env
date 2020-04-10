"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
" mkdir -p ~/.cache/dein
" cd ~/.cache/dein
" curl -O https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
" sh ./installer.sh ~/.cache/dein
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/vimproc.vim')
  call dein#add('tpope/vim-endwise')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/syntastic.git')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


syntax on

" display
" ----------------------
" colorscheme railscasts
set number " show line number
set showmode " show mode
set title " show filename
set ruler
set list " show eol,tab,etc...
" wrap is letter when you retrun
set listchars=tab:>-,trail:-,extends:>,precedes:< " eol:$
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %{fugitive#statusline()}

" edit
" ----------------------
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set showmatch " show mactch brace
set wildmenu
set clipboard=unnamed,autoselect " share OS clipboard
set autoread
set hidden
set showcmd
set backspace=indent,eol,start
set autoindent

highlight link ZenkakuSpace Error
match ZenkakuSpace /　/

" search
" ----------------------
set incsearch
set ignorecase
set smartcase
set hlsearch

" no bell
set vb t_vb=

set noswapfile
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

" line color
"highlight LineNr ctermfg=darkyellow
" text color when background color is dark
set background=dark
