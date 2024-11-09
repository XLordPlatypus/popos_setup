#!/bin/bash

sudo chmod +x utility.sh structure/cleanup.sh structure/home_setup.sh pkgs/dev_pkgs.sh pkgs/main_pkgs.sh

sudo apt -y update && sudo apt -y upgrade

echo "Installing utility"
sudo bash utility.sh
echo "Cleanup in progress"
cd structure
sudo bash cleanup.sh
echo "Creating home setup"
sudo bash home_setup.sh
echo "Installing dev packages"
cd ..
cd pkgs
sudo bash dev_pkgs.sh
echo "Installing main packages"
sudo bash main_pkgs.sh

echo "Installation finished. Please reboot."
