#!/bin/bash

# This script installs my frequently used npm global packages
MODULES=(
  # System tools
  #----------------------------------------------------------------
  "tldr"                    # Shorter man manges
  "fkill"                   # Improved process kill
  "public-ip-cli"
  "speed-test"

  # Node.js / Javascript
  #----------------------------------------------------------------
  "eslint"                  # ES linter
  "prettier"                # Prettify JS code
  "typescript"
  "npmrc"                   # Handles different npmrc environments
  "nodemon"                 # JS hotreloading
  "parcel-bundler"
  "create-react-app"
  "create-electron-app"

  # General development
  #----------------------------------------------------------------
  "commitizen"              # Git commits convention

  # Productivity / Tracking
  #----------------------------------------------------------------
  "moro"                    # Time tracker for work

  # Other
  #----------------------------------------------------------------
  "cash-cli"                # Currency conversion
  "iponmap"                 # Show IP on map
  "emoj"                    # Search for emojis
)

npm install -g "${MODULES[@]}"
