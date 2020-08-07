#!/bin/bash 
sudo apt update
sudo apt --yes upgrade

# First step as others runners may depend on some of these tools
#----------------------------------------------------------------
./ubuntu/install_frequent_packages.sh

# APT PPAs additions
#----------------------------------------------------------------
./nvim/_apt_source.sh

# Create default home directory structure
#----------------------------------------------------------------
./ubuntu/configure_directories.sh

# Installations
#----------------------------------------------------------------
./node/_install.sh              # This goes first as the script adds
                                # a new PPA and updates the cache
export NVM_DIR="$HOME/.nvm"
. $NVM_DIR/nvm.sh              # Required to load NVM in current shell
nvm use node                    # Required to load stable Node.js in current shell
./python/_install.sh
./nvim/_install.sh
./golang/_install.sh
./prezto/_install.sh

./git/_configure.sh
./node/_configure.sh
./python/_configure.sh
./nvim/_configure.sh
./tmux/_configure.sh

echo "Finished. Please open a new shell to have access to the updated environment variables"
