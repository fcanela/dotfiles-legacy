#!/bin/bash

PACKAGES=(
  # Debugging & audit 
  #----------------------------------------------------------------
  "netcat"
  "tcpdump"                 # Simple network sniffer (terminal)
  "nmap"                    # Open ports & host enumeration
  "tcpreplay"               # Suite to edit & replay network traffic stored in PCAP files
  "dsniff"                  # Debugging/hardening (tcpnice/kill) & audit tools 
  "aircrack-ng"             # Wireless audit toolkit
  "reaver"                  # Wireless WPS audit tool
)

sudo apt-get install --yes "${PACKAGES[@]}"
