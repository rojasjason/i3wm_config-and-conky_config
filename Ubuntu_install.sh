#!/bin/bash
# i3wm setup script that installs all programs (that it can) and makes everything easier.

rm i3wm_config-and-conky_config-master.zip
echo "This may take a while so please do be patience..."

# Update system
echo "Please enter your password Below..."
sudo apt-get update && sudo apt-get upgrade -y
clear

# Install all programs (in repos)
sudo apt-get install i3 feh cmatrix htop lxappearance ranger chromium-browser gnome-icon-theme-full compton i3blocks libfftw3-dev libncursesw5-dev libpulse-dev pulseaudio -y

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

# Arc Theme (doesn't download by self)
wget -nv http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme -y --allow-unauthenticated

# Moka Icon Theme
sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install moka-icon-theme faba-icon-theme faba-mono-icons -y


# Rofi Search Menu
sudo apt-get install rofi -y

# Setup i3Blocks (should work now, retest)
rm ~/.config/i3/config
mv configs/i3blocks.conf ~/.config/i3/
mv configs/config ~/.config/i3/

# Neofetch Install 
sudo add-apt-repository ppa:dawidd0811/neofetch
sudo apt update
sudo apt install neofetch -y

# i3 Gaps Repo Add (Last Step) (updated code, revisit)

# i3 Gaps Required Programs
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm-dev -y
sudo add-apt-repository ppa:aguignard/ppa
sudo apt-get update
sudo apt-get install libxcb-xrm-dev -y

# Make the folder
mkdir i3_gaps_repo
cd i3_gaps_repo
sudo apt-get install git -y

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
sudo apt install autoconf -y
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution. (come back to this)
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

# Logout (doesn't work, revisit)
echo "Please double check for any errors and logout for changes to apply. See you on the other side and thank you!"
