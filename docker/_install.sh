#!/bin/bash

sudo apt-get install --yes docker-ce docker-ce-cli containerd.io docker-compose
sudo usermod -aG docker $USER
