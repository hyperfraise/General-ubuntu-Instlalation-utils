#!/bin/bash
sudo apt-get install libelf-dev linux-headers-$(uname -r) build-essential pkg-config -y
wget https://git.zx2c4.com/wireguard-linux-compat/snapshot/wireguard-linux-compat-1.0.20200611.tar.xz
tar xvf wireguard-linux-compat-1.0.20200611.tar.xz
make -C wireguard-linux-compat-1.0.20200611/src/ -j$(nproc)
sudo make -C wireguard-linux-compat-1.0.20200611/src/ install
sudo systemctl restart wg-quick@veesion.service
