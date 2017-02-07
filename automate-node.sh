#!/bin/sh
{
  echo "This script requires superuser access to install packages."
  echo "You will be prompted for your password by sudo."

  # clear any previous sudo permission
  sudo -k

  # run inside sudo
  sudo sh <<SCRIPT
  
  # Install Node Version Manager
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
  
  # Download, compile, and install the latest release of node, do this
  nvm install v7.5.0
   
  # Use the installed version
  nvm use v7.5.0
  
  # Install global modules
  npm install -g fixpack yarn react-native create-react-app create-graphql yo ngrok
  
SCRIPT
}
