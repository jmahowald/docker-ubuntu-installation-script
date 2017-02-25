#!/bin/bash 

set -e
set -x 
# From https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository

# Allow apt to use https
sudo apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Install docker gpg key
curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -

# Verify the gpg key is correct  
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609

# setup docker stable
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

sudo apt-get update
