#!/bin/bash
github_username="$1"
# Update the packet manager
sudo apt-get update -y && sudo apt-get upgrade -y
# Install ssh
sudo apt-get install openssh-client && sudo apt-get -y install openssh-server
#Install curl
sudo apt-get -y install curl
#Create ssh key for user veesion
ssh-keygen -b 4096 -f /home/veesion/.ssh/id_rsa -q -N ""
#Put your ssh key in the authorized_keys
url="https://github.com/"$github_username".keys"
echo $url
curl $url >> .ssh/authorized_keys
