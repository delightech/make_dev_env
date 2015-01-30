#!/bin/sh
yum update
yum -y groupinstall 'Development tools'
yum -y install ncurses ncurses-devel
./install_vim.sh
./install_perlenv.sh
