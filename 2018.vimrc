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
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %{fugitive#statusline()}
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" edit
" ----------------------
set expandtab
set smarttab
set tabstop=2 shiftwidth=2 softtabstop=0
set showmatch " show mactch brace
set wildmenu
set clipboard=unnamed,autoselect " share OS clipboard
set autoread
set hidden
set showcmd
set backspace=indent,eol,start
" if paste mode, can not use autoindent.
"set paste
set autoindent
set smartindent

highlight link ZenkakuSpace Error
match ZenkakuSpace /　/

" Perl
"autocmd BufNewFile,BufRead *.psgi   set filetype=perl
"autocmd BufNewFile,BufRead *.t      set filetype=perl
augroup filetypedetect
    au BufNewFile,BufRead *.psgi    setf perl
    au BufNewFile,BufRead *.t       setf perl
    au BufNewFile,BufRead *.tt      setf tt2html
    au BufNewFile,BufRead *.tt2     setf tt2html
    au BufNewFile,BufRead cpanfile  setf perl
augroup END


" Vim compiler file
" Compiler: perl (output of "die" massaged)
" Maintainer: Chris Forkin, chris@forkin.com

if exists("current_compiler")
   finish
endif

let current_compiler = "perl"
" A workable errorformat for "perl -c"
setlocal errorformat=%f:%l:\ %m
" default make
setlocal makeprg=perl\ -MVimCompile\ -c\ %

" move
" http://www.atmarkit.co.jp/ait/articles/1107/21/news115.html
" ----------------------
"set whichwrap=b,s,h,l,<,>,[,]

" When insert mode, enable hjkl and enable go to home/end.
imap <C-e> <End>
imap <C-a> <Home>
"imap <C-h> <Left>
"imap <C-j> <Down>
"imap <C-k> <Up>
"imap <C-l> <Right>

" search
" ----------------------
set incsearch
set ignorecase
set smartcase
" set hlsearch

" no bell
set visualbell
set t_vb=

set noswapfile
set clipboard=unnamed,autoselect
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

" whern insert mode, C-n and C-p display candidates for input.

" move to last editing line
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" Colors of vimdiff
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

