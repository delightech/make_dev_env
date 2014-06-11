#!/bin/sh
#install plenv
git clone https://github.com/tokuhirom/plenv.git ~/.plenv

#install perl-build
git clone https://github.com/tokuhirom/Perl-Build.git ~/.plenv/plugins/perl-build/

#set .bashrc
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
echo 'export PATH="$HOME/.plenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(plenv init -)"' >> ~/.bashrc

#designate using version of perl(global)
plenv install 5.8.8
plenv local 5.8.8
plenv rehash

#install cpanm to local
plenv install-cpanm

#install carton
cpanm Carton
