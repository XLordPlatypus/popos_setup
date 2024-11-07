#!/bin/bash

# --- Brave Browser ---
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

# --- Logseq ---
wget https://github.com/logseq/logseq/releases/download/0.10.9/Logseq-linux-x64-0.10.9.AppImage "~/dev/software"
sudo dpkg -i ~/dev/software/Logseq-linux-x64-0.10.9.AppImage

# --- VSCodium ---
wget https://github.com/VSCodium/vscodium/releases/download/1.95.1.24307/codium_1.95.1.24307_amd64.deb "~/dev/software"
sudo dpkg -i ~/dev/software/codium_1.95.1.24307_amd64.deb

# --- Zed-Editor ---
cd ~/dev/software
curl -f https://zed.dev/install.sh | sh
cd ~

# --- Godot ---
cd ~/dev/software
wget https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip
unzip Godot_v4.3-stable_linux.x86_64.zip
cd ~

# --- Docker Desktop ---
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

wget https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb "~/dev/software"
sudo dpkg -i docker-desktop-amd64.deb

sudo apt-get update
sudo apt-get install ./docker-desktop-amd64.deb
