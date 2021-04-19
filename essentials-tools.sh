#!/bin/bash
sudo apt-get update

# Base tools
sudo apt-get install curl wget -y

# Install Nodejs
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install web development dependencies
sudo npm install -g typescript @angular/cli @ionic/cli firebase-tools

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

# Install Google Cloud SDK
# Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update the package list and install the Cloud SDK
sudo apt-get update && sudo apt-get install google-cloud-sdk

# Install PyCharm
# sudo snap install pycharm-community --classic

