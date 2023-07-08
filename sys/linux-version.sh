#!/bin/bash

wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
sudo bash ubuntu-mainline-kernel.sh -i $1
sudo reboot -h now
