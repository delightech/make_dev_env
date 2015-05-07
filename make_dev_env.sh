#!/bin/sh
# update and install yum in advance for CentOS.
yum update
yum -y groupinstall 'Development tools'
yum -y install ncurses ncurses-devel
yum -y install python-devel
yum -y install ruby-devel
yum -y install perl-ExtUtils-Embed


./install_vim.sh
./install_perlenv.sh
