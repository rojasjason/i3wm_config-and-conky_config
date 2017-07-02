#!/bin/bash
# I3wm setup script that installs all programs (that it can) and makes everything easier.

echo "This may take a while so please do be patience..."

# Update system
sudo apt-get update && sudo apt-get upgrade -y
clear

# Install all programs (in repos)
sudo apt-get install i3 feh

# Playctl
sudo dpkg -i playerctl-0.5.0_amd64.deb

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Font-Awesome
mkdir ~/.fonts
mv fontawesome-webfont.ttf ~/.fonts/

# Logout
echo "See you on the other side and thank you!"
gnome-session-quit
