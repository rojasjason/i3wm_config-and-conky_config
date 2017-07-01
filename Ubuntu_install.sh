#!/bin/bash
# I3wm setup script that installs all programs (that it can) and makes everything easier.

echo "This may take a while so please do be patience..."

# Update system
sudo apt-get update && sudo apt-get upgrade -y
clear

# Install all programs then logout
sudo apt-get install i3 
sudo dpkg -i playerctl-0.5.0_amd64.deb
echo "See you on the other side and thank you!"
gnome-session-quit
