#!/bin/bash
sudo apt-get update

# Base tools
sudo apt-get install curl wget -y

# Install Nodejs
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install web development dependencies
sudo npm install -g typescript --silent @angular/cli @ionic/cli

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Install Snap
sudo apt-get update
sudo apt-get install snapd

# Install Postman
sudo snap install postman

# Install VsCode
sudo snap install --classic code

# Install PyCharm
# sudo snap install pycharm-community --classic

