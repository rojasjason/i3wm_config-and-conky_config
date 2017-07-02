# i3wm_config-and-conky_config
Personal Setup Configs

1. Move everything into your home directory and unzip
2. Make install.sh executeable by running the command "chmod +x install.sh". Then run "./install.sh".
3.
4. Move the "config" file in place of your i3 config file (usually in your ~/.config/i3 directory) and delete the previous one or just copy and paste everything in there. 
5. Open lxappearance, make any kind of change (it really doesn't matter what type of change as long as something is changed), then go to your home directory and type "ll" to find the ".gtkrc-2.0" file and then open it with nano (or your editor of choice), change the gtk-font-name to your font of choosing (in my case it is "VeraMono 8"). Now type "nano .config/gtk-3.0/settings.ini" and change the gtk-font-name to your font of choosing (VeraMono 8). Then restart lxapperance and it should appear as your choosen setting, just don't change it or else you have to start all over again.
6. Open Firefox and change theme to "Tron-ish"
. Press "Crtl+Shift+r" to reload your i3 then logout ("Crtl+Shift+e") and back in for extra measure.
