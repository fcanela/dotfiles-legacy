#!/bin/bash

APT_PACKAGES=(
  # Language
  #----------------------------------------------------------------
  "python3"
  "python"                # At the time of writting, this is Python2 

  # Package manager
  #----------------------------------------------------------------
  "python3-pip"

  # Headers / static libs
  #----------------------------------------------------------------
  "python-dev"
  "python3-dev"
)

sudo apt-get install --yes "${APT_PACKAGES[@]}"
