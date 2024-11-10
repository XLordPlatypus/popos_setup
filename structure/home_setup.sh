#!/bin/bash

cd home/$LOGNAME/popos_setup/files
cp .gitconfig home/$LOGNAME/

cd home/$LOGNAME
mkdir -p projects/{gamedev,webdev,other}
mkdir -p dev/{software,doc}

