#!/bin/bash

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
