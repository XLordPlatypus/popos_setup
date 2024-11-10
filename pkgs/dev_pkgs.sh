#!/bin/bash

# --- Node Version Manager ---
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source home/$LOGNAME/.bashrc

# --- Node ---
nvm install --lts

# --- Clang ---
sudo apt -y install clang
sudo apt -y install clangd

# --- CMake ---
sudo apt -y install cmake

# --- Make ---
sudo apt -y install make


