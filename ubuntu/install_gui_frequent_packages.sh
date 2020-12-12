#!/bin/bash

PACKAGES=(
  # Development
  #----------------------------------------------------------------
  "zeal"                    # Offline documentation
  "mypaint"                 # Quickly raw diagrams / interfaces / whatever
  "chromium-browser"        # Development browser (only dev extensions)

  # Debugging & audit 
  #----------------------------------------------------------------
  "wireshark"               # Powerful network sniffer (w/ GUI)

  # Network / Internet apps
  #----------------------------------------------------------------
  "firefox"                 # Leisure browser (lot of privacy extensions)
  "thunderbird"             # Email client
  "filezilla"               # FTP/SFTP client
  "transmission"            # BitTorrent client

  # Fun
  #----------------------------------------------------------------
  "vlc"                     # Multimedia player
  "calibre"                 # Manages my ebooks collection

  # Others
  #----------------------------------------------------------------
  "libreoffice"             # Productivity suite
  "obs-studio"              # Screen recording / streaming
  "gimp"                    # Image editor
  "thunderbird"             # Email client
)

sudo apt-get install --yes "${PACKAGES[@]}"
