#!/bin/bash

echo Adding Insync PPA
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo sh -c 'echo "deb http://apt.insync.io/ubuntu $(lsb_release -cs) non-free contrib" > /etc/apt/sources.list.d/insync.list'
