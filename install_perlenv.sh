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
plenv global 5.8.8
plenv rehash

#install cpanm to local
plenv install-cpanm
#if you fail to install cpanm, use below commands.
# wget https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm --no-check-certificate
# plenv exec perl cpanm App::cpanminus
plenv rehash

#install carton
cpanm Carton
