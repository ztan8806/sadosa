#!/bin/bash

# 下載安裝BBR加速
wget "https://github.com/chiakge/Linux-NetSpeed/raw/master/tcp.sh" && chmod +x tcp.sh
echo "1" | ./tcp.sh
