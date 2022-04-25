#!/bin/bash

set -o -x

state_file=~/.global_theme_state
current_state=`cat $state_file`

if [ "dark" == "$current_state" ]; then
    # switch to light

    # for terminal
    # TODO: Implement parameter with search for target theme (if contains light etc...)
    set_colorscheme.py

    # for gnome
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
    gsettings set org.gnome.desktop.interface color-scheme "default"
    
    echo "light" > $state_file 
else
    # switch to dark

    # for terminal
    set_colorscheme.py

    # for gnome
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

    echo "dark" > $state_file
fi

# for nvim (logic is in vimrc)
refresh_nvim.sh 
