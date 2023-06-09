#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update

sudo apt install cmake git byobu htop -y
sudo apt install gpg curl tar xz-utils make gcc flex bison libssl-dev libelf-dev -y
sudo apt install llvm-9 clang-9 -y

wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 16
rm llvm.sh

git config --global user.name "xyxiang7"
git config --global user.email "xyxiang7@gmail.com"
sudo timedatectl set-timezone America/New_York
