#!/bin/bash 

# From https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository

# Fail if anything fails
set -e

# Allow apt to use https
sudo apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Install docker gpg key
curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -

# Verify the gpg key is correct  
# TODO make this fail ?
sudo apt-key fingerprint | grep "5811 8E89 F3A9 1289 7C07  0ADB F762 2157 2C52 609D"

# setup docker stable
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

sudo apt-get update

sudo apt-get -y install docker-engine