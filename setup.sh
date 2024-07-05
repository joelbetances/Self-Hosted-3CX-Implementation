#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y wget apt-transport-https

# Add the 3CX repository
wget -O- http://downloads.3cx.com/downloads/3cxpbx/public.key | sudo apt-key add -
echo "deb http://downloads.3cx.com/downloads/3cxpbx/ stable main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list

# Install 3CX
sudo apt-get update
sudo apt-get install -y 3cxpbx

# Configure 3CX
cp /path/to/your/3cx.conf /etc/3cxpbx/3cx.conf

# Start 3CX
sudo systemctl start 3cxpbx
sudo systemctl enable 3cxpbx
