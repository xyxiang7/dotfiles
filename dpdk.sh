#!/bin/bash

sudo apt update
sudo apt install -y flex bison build-essential dwarves libssl-dev libelf-dev \
    libnuma-dev pkg-config python3-pip python3-pyelftools \
    libconfig-dev gcc-multilib uuid-dev sysstat
sudo pip3 install meson ninja

cd $HOME
rm -rf dpdk

git clone --single-branch git://dpdk.org/dpdk
cd dpdk
git switch --detach v21.11
meson build
cd build
ninja
sudo ninja install
sudo ldconfig
