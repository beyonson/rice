#!/bin/bash
#
#
HOME="$(getent passwd $SUDO_USER | cut -d: -f6)"
POLYBAR=$HOME/.config/polybrar/
PICOM=$HOME/.config/picom/
ALACRITTY=$HOME/.config/alacritty/
I3=$HOME/.config/i3/
CONFIG=$HOME/.config/

if [ $UID -ne 0 ]; then
    echo "Must be root"
    exit 0
fi


# POLYBAR
echo "Setting polybar config" 
cp -r polybar $CONFIG


# PICOM
echo "Setting picom config" 
cp -r picom $CONFIG


# I3
echo "Setting i3 config" 
cp -r i3 $CONFIG


# ALACRITTY
echo "Setting alacritty config" 
cp -r alacritty $CONFIG

# STARTUP
echo "Moving startup script"
cp startup/.xsession $HOME

echo "Done moving configs"
