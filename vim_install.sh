#!/bin/sh

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
    --enable-cscope \
    --enable-fontset \
    --enable-fail-if-missing
make
make install

echo 'export PATH="$HOME/.vim/bin/:$PATH"' >> ~/.bashrc
echo 'alias vi="$HOME/.vim/bin/vim"' >> ~/.bashrc
. ~/.bashrc

#install neobundle
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim 

#set my vimrc
git clone https://github.com/shinjukujohnny/vimrc.git
cp vimrc/.vimrc ~/
