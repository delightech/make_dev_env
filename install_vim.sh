#!/bin/sh

mkdir -p ~/.vim/bundle
#install vim
curl -O http://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar jxvf vim-7.4.tar.bz2
cd vim74
./configure \
    --prefix=$HOME/.vim \
    --with-features=huge \
    --enable-multibyte \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-rubyinterp \
    --enable-cscope \
    --enable-fontset \
    --enable-fail-if-missing 
make && make install
cd ..

echo 'export PATH="$HOME/.vim/bin/:$PATH"' >> ~/.bashrc
echo 'alias vi="$HOME/.vim/bin/vim"' >> ~/.bashrc
$SHELL -l

#install neobundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

#set my vimrc
cp .vimrc ~/

mkdir ~/.vim/dict
cd ~/.vim/dict
wget https://raw.github.com/Cside/dotfiles/master/.vim/dict/perl.dict --no-check-certificate
