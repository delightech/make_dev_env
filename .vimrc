" 初回起動時に以下を実行
" :PluginInstall

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" get Vundle.vim
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

let g:airline_theme='luna'

" change line no color
autocmd ColorScheme * highlight LineNr guifg=#c0c0c0
autocmd ColorScheme * highlight Comment ctermfg=44

" 以下のcolor設定は　、screen on ubuntu ではコメントアウトする
" color theme
colorscheme molokai

syntax on
" 256 color
set t_Co=256
" truecolor
set termguicolors
" background color
set background=dark

" added 2021/02/23
colorscheme elflord

" display
" ----------------------
set number " show line number
set showmode " show mode
set title " show filename
set ruler
set list " show eol,tab,etc...
" wrap is letter when you retrun
set listchars=tab:>-,trail:-,extends:>,precedes:< " eol:$
set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %{fugitive#statusline()}

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

" save last cursor position
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
