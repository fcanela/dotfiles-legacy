#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Required to load NVM in current shell
\. $HOME/.nvm/nvm.sh            

nvm install stable
