#!/bin/bash

PACKAGES=(
  # General utils
  #----------------------------------------------------------------
  "zsh"                     # My favorite shell
  "tmux"                    # Terminal multiplexer I am used to
  "tmuxp"                   # Configure tmux sessions
  "curl"
  "wget"
  "ranger"                  # File manager with NeoVim integration
  "thefuck"                 # Corrects failed shell commands
  "software-properties-common"
  "chromium-browser"        # Development browser (only dev extensions)
  "unrar-free"

  # Development
  #----------------------------------------------------------------
  "git"
  "make"
  "gcc"
  "g++"
  "jq"                      # `sed` for JSON
  "jo"                      # creates JSON from key=value input
  "silversearcher-ag"       # grep-like source code search tool
  "docker.io"
  "docker-compose"
  "howdoi"                  # Searches coding questions
  "zeal"                    # Offline documentation
  "mypaint"                 # Quickly raw diagrams / interfaces / whatever

  # Debugging & audit 
  #----------------------------------------------------------------
  "netcat"
  "tcptraceroute"
  "tcpdump"
  "wireshark"
  "nmap"
  "tcpreplay"
  "dsniff"
  "aircrack-ng"
  "reaver"

  # Living in the terminal
  #----------------------------------------------------------------
  "cmus"                    # Audio player
  "irssi"                   # IRC client

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
  "cmatrix"                 # Terminal screensaver
  "cowsay"                  # Talking cow (remove when installing Ansible)
  "figlet"                  # Prints input as ASCII art

  # Others
  #----------------------------------------------------------------
  "libreoffice"             # Productivity suite
  "obs-studio"              # Screen recording / streaming
  "gimp"                    # Image editor

  # Dependencies / Libraries
  #----------------------------------------------------------------
)

sudo apt-get install --yes "${PACKAGES[@]}"

echo "[+] Setting zsh as default shell. This operation may request the user password"
chsh -s /bin/zsh
