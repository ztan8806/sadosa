#!/bin/bash

# 更新、安装工具
sudo yum -y update
sudo yum --fix-broken install
sudo yum -y install gcc automake autoconf libtool make wget

# 下载 libsodium
wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.18-stable.tar.gz
tar -zxf libsodium-1.0.18-stable.tar.gz
rm -f libsodium-1.0.18-stable.tar.gz
cd libsodium-stable

# 配置、编译、安装
./configure --prefix=/usr
make && make check
sudo make install
sudo ldconfig

echo "libsodium 安装完成"
