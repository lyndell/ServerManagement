#!/bin/bash -x
#
# Install BOINC software
#
#
# just compiling the client
# yum -y install git gcc-c++ autoconf openssl-devel automake libtool libcurl-devel
yum -y install git libtool gcc-c++ libstdc++-static MySQL-python php-mysql php-gd php-cli openssl-devel mysql-devel mysql-server httpd php

# Clone repo
git clone https://github.com/BOINC/boinc boinc

# Build
cd boinc
./_autosetup
./configure --disable-manager --enable-server
make







exit;
useradd boinc

 /usr/sbin/usermod -G boinc -a username
chmod g+rw /var/lib/boinc
chmod g+rw /var/lib/boinc/*.*
ln -s /var/lib/boinc/gui_rpc_auth.cfg /home/username/gui_rpc_auth.cfg


exit;

# clean-up local repo
git clean -f -d -x


: <<'END'

# Software prerequisites
# full package list:

    git
    libtool
    gcc-c++
    libstdc++-static
    MySQL-python
    php-mysql
    php-gd
    php-cli
    openssl-devel
    mysql-devel
    mysql-server
    httpd
    php

# just compiling the client

    gcc-c++
    autoconf
    openssl-devel
    automake
    libtool
    libcurl-devel


END
