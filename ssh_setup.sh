#!/bin/bash
github_username="$1"
# Install ssh
sudo apt-get install openssh-client && sudo apt-get -y install openssh-server
#Install curl
mkdir .ssh
#Create ssh key for user veesion
ssh-keygen -b 4096 -f /home/veesion/.ssh/id_rsa -q -N ""
#Put your ssh key in the authorized_keys
url="https://github.com/"$github_username".keys"
echo $url
curl $url >> .ssh/authorized_keys
