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
  "unrar-free"
  "htop"

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
  "chromium-browser"        # Development browser (only dev extensions)
  "direnv"                  # Allows per-directory environment variables

  # Debugging & audit 
  #----------------------------------------------------------------
  "netcat"
  "tcptraceroute"           # Traceroute using TCP instead of ICMP
  "tcpdump"                 # Simple network sniffer (terminal)
  "wireshark"               # Powerful network sniffer (w/ GUI)
  "powertop"                # Power consumption analysis & tuning
  "iotop"                   # I/O usage analysis
  "nmap"                    # Open ports & host enumeration
  "tcpreplay"               # Suite to edit & replay network traffic stored in PCAP files
  "dsniff"                  # Debugging/hardening (tcpnice/kill) & audit tools 
  "aircrack-ng"             # Wireless audit toolkit
  "reaver"                  # Wireless WPS audit tool

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
  "libsqlite3-dev"
)

sudo apt-get install --yes "${PACKAGES[@]}"

echo "[+] Setting zsh as default shell. This operation may request the user password"
chsh -s /bin/zsh
