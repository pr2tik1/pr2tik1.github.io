#!/bin/bash

# Update package list and install R
sudo apt-get update
sudo apt-get install -y r-base

# Download quarto-1.3.450-linux-amd64.deb
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.450/quarto-1.3.450-linux-amd64.deb

# Install quarto
sudo dpkg -i quarto-1.3.450-linux-amd64.deb

# Install dependencies (if needed)
sudo apt-get -f install

# Clean up downloaded .deb file
rm quarto-1.3.450-linux-amd64.deb
