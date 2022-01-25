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
  "neofetch"                # Displays system information
  "apt-transport-https"
  "ca-certificates"
  "gnupg-agent"
  "unrar"
  "tlp"
  "tlp-rdw"

  # Development
  #----------------------------------------------------------------
  "git"
  "make"
  "gcc"
  "g++"
  "jq"                      # `sed` for JSON
  "jo"                      # creates JSON from key=value input
  "silversearcher-ag"       # grep-like source code search tool
  "howdoi"                  # Searches coding questions
  "direnv"                  # Allows per-directory environment variables
  "fonts-firacode"          # My preferred font for programming, with ligatures

  # Debugging & audit 
  #----------------------------------------------------------------
  "tcptraceroute"           # Traceroute using TCP instead of ICMP
  "powertop"                # Power consumption analysis & tuning
  "iotop"                   # I/O usage analysis

  # Living in the terminal
  #----------------------------------------------------------------
  "cmus"                    # Audio player
  "irssi"                   # IRC client

  # Fun
  #----------------------------------------------------------------
  "cmatrix"                 # Terminal screensaver
  "cowsay"                  # Talking cow (remove when installing Ansible)
  "figlet"                  # Prints input as ASCII art

  # Dependencies / Libraries
  #----------------------------------------------------------------
  "libsqlite3-dev"
)

sudo apt-get install --yes "${PACKAGES[@]}"

echo "[+] Setting zsh as default shell. This operation may request the user password"
chsh -s /bin/zsh
