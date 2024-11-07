#!/bin/bash

sudo chmod +x utility.sh structure/cleanup.sh structure/home_setup.sh pkgs/dev_pkgs.sh pkgs/main_pkgs.sh

sudo apt update && sudo apt upgrade

echo "Installing utility"
sudo bash utility.sh
echo "Cleanup in progress"
sudo bash structure/cleanup.sh
echo "Creating home setup"
sudo bash structure/home_setup.sh
echo "Installing dev packages"
sudo bash pkgs/dev_pkgs.sh
echo "Installing main packages"
sudo bash pkgs/main_pkgs.sh

echo "Installation finished. Please reboot."
