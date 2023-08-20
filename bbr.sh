#!/bin/bash

# 更新、安裝工具
sudo yum -y update
sudo yum -y install gcc automake autoconf libtool make wget ca-certificates

# 下載 libsodium
wget https://github.com/ztan8806/sadosa/raw/main/libsodium-1.0.18-stable.tar.gz
tar -zxf libsodium-1.0.18-stable.tar.gz
rm -f libsodium-1.0.18-stable.tar.gz
cd libsodium-stable

# 配置、編譯、安裝
./configure --prefix=/usr
make && make check
sudo make install
sudo ldconfig
cd /root/

# 下載安裝BBR加速
wget "https://github.com/chiakge/Linux-NetSpeed/raw/master/tcp.sh" && chmod +x tcp.sh
echo "1" | echo "N" | ./tcp.sh
