#!/bin/bash
# i3wm setup script that installs all programs (that it can) and makes everything easier.

echo "This may take a while so please do be patience..."

# Update system
echo "Please enter your password Below..."
sudo apt-get update && sudo apt-get upgrade -y
clear

# Install all programs (in repos)
sudo apt-get install i3 feh lxappearance ranger gnome-icon-theme-full compton

# Playctl
sudo dpkg -i playerctl-0.5.0_amd64.deb

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client -y

# Font-Awesome
mkdir ~/.fonts
mv fontawesome-webfont.ttf ~/.fonts/

# Tron Fonts
mv VeraMono.ttf ~/.fonts/
mv VeraMoIt.ttf ~/.fonts/
mv VeraMoBd.ttf ~/.fonts/
mv VeraMoBI.ttf ~/.fonts/

# Arc Theme
wget -nv http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme -y

# Moka Icon Theme
sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install moka-icon-theme faba-icon-theme faba-mono-icons -y

# Rofi Search Menu
sudo apt-get install rofi -y

# Logout
echo "See you on the other side and thank you!"
gnome-session-quit
