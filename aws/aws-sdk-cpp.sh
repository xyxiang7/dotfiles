#!/bin/bash

sudo apt-get update
sudo apt-get install -y libcurl4-openssl-dev libssl-dev uuid-dev zlib1g-dev libpulse-dev
sudo apt install -y cmake build-essential libssl-dev pkg-config
sudo apt install -y awscli
# assume that cmake has been installed

# sudo chown -R $(id -u):$(id -g) $WORK_DIR
cd $HOME

rm -rf aws-sdk-cpp
git clone --recurse-submodules https://github.com/aws/aws-sdk-cpp
rm -rf sdk-build
mkdir sdk-build
cd sdk-build

cmake ../aws-sdk-cpp -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=/usr/local/ -DCMAKE_INSTALL_PREFIX=/usr/local/ # -DBUILD_ONLY="s3"
make
sudo make install

cd $HOME
