" Vim install
"   curl -O http://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2 (or wget)
"   tar jxvf vim-7.4.tar.bz2
"   cd vim74
"   ./configure \
"   --with-features=huge \
"   --enable-multibyte \
"   --enable-perlinterp \
"   --enable-pythoninterp \
"   --enable-rubyinterp \
"   --enable-cscope \
"   --enable-fontset \
"   --enable-fail-if-missing \
"   --prefix=$HOME/.vim
"   make
"   make install
"   echo 'VIM_HOME=$HOME/.vim' >> ~/.bash_profile
"   echo 'export PATH=$VIM_HOME:$PATH' >> ~/.bash_profile
"   echo 'alias vi=$VIM_HOME/vim' >> ~/.bash_profile
"   . ~/.bash_profile
" NeoBundle install
"   mkdir -p ~/.vim/bundle
"   git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" ----------------------
"
set nocompatible               " be iMproved
filetype off                   " required!

if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

" originalrepos on github
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'
NeoBundle 'railscasts'
NeoBundle 'surround.vim'
NeoBundle 'mru.vim'
NeoBundle 'The-NERD-tree'
"NeoBundle 'The-NERD-Commenter'
"NeoBundle 'EasyMotion'
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'
"NeoBundle 'AutoClose'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'alpaca-tc/alpaca_tags'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'bbatsov/rubocop'
NeoBundle 'basyura/unite-rails'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'yuku-t/vim-ref-ri'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'skwp/vim-rspec'
NeoBundle 'vim-scripts/errormarker.vim'
NeoBundle 'kchmck/vim-coffee-script'
"NeoBundle 'snipMate'
NeoBundle 'petdance/vim-perl'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'c9s/perlomni.vim'
NeoBundle 'mattn/perlvalidate-vim.git'
NeoBundle 'vim-perl/vim-perl'
NeoBundle 'airblade/vim-gitgutter'

" If there are uninstalled bundles found on startup,
"  " this will conveniently prompt you to install them.
NeoBundleCheck

filetype plugin indent on     " required!
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
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" edit
" ----------------------
set autoindent
set smartindent
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
" ----------------------
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
set whichwrap=b,s,h,l,<,>,[,]

" When insert mode, enable hjkl and enable go to home/end.
imap <C-e> <End>
imap <C-a> <Home>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

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
"surround.vim {{{
nmap ,( csw(
nmap ,) csw)
nmap ,{ csw{
nmap ,} csw}
nmap ,[ csw[
nmap ,] csw]
nmap ,' csw'
nmap ," csw"
"}}}

" backup
" --------------------
"set backup
"set backupdir=~/.vim/vim_backup
"set swapfile
"set directory=~/.vim/vim_swap

" key map
" --------------------
"let mapleader = ","
"noremap <CR> o<ESC>

" auto command
" --------------------
"augroup BufferAu
"   autocmd!
"   " change current directory
"   autocmd BufNewFile,BufRead,BufEnter * if isdirectory(expand("%:p:h")) && bufname("%") !~ "NERD_tree" | cd %:p:h | endif
"augroup END

" Plugin setting
" --------------------

" NEED Commenter
"let NERDShutUp = 1 "no alart undfined filetype

" rails.vim
let g:rails_level=3

" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
if neobundle#is_installed('neocomplete')
  let g:acp_enableAtStartup = 0
  " Use neocomplete.
  let g:neocomplete#enable_at_startup = 1
  " Use smartcase.
  let g:neocomplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  
  " Define dictionary.
  let g:neocomplete#sources#dictionary#dictionaries = {
       \ 'default' : '',
       \ 'vimshell' : $HOME.'/.vimshell_hist',
       \ 'scheme' : $HOME.'/.gosh_completions'
       \ }
  
  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
     let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'
  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  "function! s:my_cr_function()
  "  return neocomplete#close_popup() . "\<CR>"
  "  " For no inserting <CR> key.
  "  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
  "endfunction
  " Enable heavy omni completion.
  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
  let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'"
  "" Plugin key-mappings.
  "inoremap <expr><C-g> neocomplete#undo_completion()
  "inoremap <expr><C-i> neocomplete#complete_common_string()

  "" <TAB>: completion.
  "inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  "inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
  ""inoremap <expr><Enter>  pumvisible() ? "\<C-i>" : "\<Enter>"
  ""inoremap <expr><Enter>  pumvisible() ? neocomplete#close_popup() : "\<Enter>"
  "" <C-h>, <BS>: close popup and delete backword char.
  ""inoremap <expr><C-h> pumvisible() ? neocomplete#smart_close_popup() : "\<C-h>"
  ""inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  ""inoremap <expr><Enter> neocomplete#close_popup()
  "inoremap <expr><C-e> neocomplete#cancel_popup()
  "" Close popup by <Space>.
  ""inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

  "" For cursor moving in insert mode(Not recommended)
  "inoremap <expr><Left> neocomplete#close_popup() . "\<Left>"
  "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
  "inoremap <expr><Up> neocomplete#close_popup() . "\<Up>"
  "inoremap <expr><Down> neocomplete#close_popup() . "\<Down>"
  "" Or set this.
  ""let g:neocomplete#enable_cursor_hold_i = 1
  "" Or set this.
  ""let g:neocomplete#enable_insert_char_pre = 1

  "" AutoComplPop like behavior.
  ""let g:neocomplete#enable_auto_select = 1

  "" Shell like behavior(not recommended).
  ""set completeopt+=longest
  ""let g:neocomplete#enable_auto_select = 1
  ""let g:neocomplete#disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
elseif neobundle#is_installed('neocomplcache')
    " neocomplcache用設定
    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_ignore_case = 1
    let g:neocomplcache_enable_smart_case = 1
    if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
    endif
    let g:neocomplcache_keyword_patterns._ = '\h\w*'
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
    let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default'    : '',
    \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
    \ }
endif


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
