#!/usr/bin/env sh

apt-get update

# get dev tools
apt-get -y git build-essential ncurses-dev m4 autoconf vim

# download an build erlang
cd tmp
yes | git clone https://github.com/erlang/otp.git
cd otp
set ERL_TOP = /tmp/otp
./otp_build autoconf
./configure
make

# install erlang
make install

