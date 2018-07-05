#/bin/bash

echo Getting the initial system setup 
echo Switching the capslock and escape keys
setxkbmap -option caps:swapescape
setxkbmap -option swapescape:caps

sudo apt-get install vim -y
