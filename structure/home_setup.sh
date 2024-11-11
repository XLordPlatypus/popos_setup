#!/bin/bash

cd /home/$LOGNAME/popos_setup/files
cp .gitconfig /home/$LOGNAME/

cd /home/$LOGNAME
sudo mkdir -p projects/{gamedev,webdev,other}
sudo mkdir -p dev/{software,doc}

