#/bin/bash 

sudo apt-get install nodejs -y 
sudo apt-get install npm -y

#install nvm
sudo apt-get install curl -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

sudo apt-get install nmap -y
sudo apt-get install netcat -y

#this is some git related things, should prolly go someplace else
git config --global credential.helper cache 
git config --global credential.helper 'cache --timeout=6000'


#this is for you complete me 
apt install build-essential cmake vim python3-dev
