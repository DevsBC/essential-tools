#!/bin/bash
sudo apt-get update

# THIS SCRIPT REQUIRE USER INTERACTION
# OMIT SUDO IF ALREADY ROOT

# Base tools
sudo apt-get install curl wget -y

sudo apt install git

# Install Nodejs
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install My standard web development dependencies TSC - Angular - Ionic -Firebase
sudo npm install -g typescript @angular/cli @ionic/cli firebase-tools

# Install React
sudo npm install -g create-react-app 

# Install Next (React Framework) only locally when project was initialized
# npm install next react react-dom

# Install React Native
sudo npm install -g react-native-cli

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
sudo snap install pycharm-community --classic

# Install MonoDevelop
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt-add-repository 'deb https://download.mono-project.com/repo/ubuntu stable-focal main'
sudo apt update
sudo apt install mono-complete 

# Install OpenJDK
sudo apt install openjdk-11-jdk

# Install Android Studio
sudo snap install android-studio --classic

# Install Flutter
sudo snap install flutter --classic

# Install Docker
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
#sudo apt update
#sudo apt install docker-ce
# Add user to docker
#sudo usermod -aG docker $USER

# Vscode Extensions
code --install-extension loiane.angular-extension-pack --force
code --install-extension fivethree.vscode-ionic-snippets
code --install-extension Dart-Code.flutter
code --install-extension Nash.awesome-flutter-snippets
code --install-extension lauren.react-pack
code --install-extension formulahendry.terminal
code --install-extension MS-vsliveshare.vsliveshare-pack