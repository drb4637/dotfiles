#/bin/bash 

sudo apt-get install nmap -y
sudo apt-get install netcat -y

#this is some git related things, should prolly go someplace else
git config --global credential.helper cache 
git config --global credential.helper 'cache --timeout=6000'
