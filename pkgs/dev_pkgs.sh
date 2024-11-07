#!/bin/bash

# --- Node Version Manager ---
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc

# --- Node ---
nvm install --lts

# --- Clang ---
sudo apt install clang
sudo apt install clangd

# --- MingW ---
sudo apt install msys2
source ~/.bashrc
mingw-get install mingw-w64-x86_64-gcc

# CMake
sudo apt install cmake

# Make
sudo apt install make


