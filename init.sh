#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git -y

git config --global user.name "xyxiang7"
git config --global user.email "xyxiang7@gmail.com"
sudo timedatectl set-timezone Asia/Shanghai
