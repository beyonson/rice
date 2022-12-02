#!/bin/bash
#
#
POLYBAR=~/.config/polybar/
PICOM=~/.config/picom/
ALACRITTY=~/.config/alacritty/
I3=~/.config/i3/

if [ $UID -ne 0 ]; then
    echo "Must be root"
    exit 0
fi

# POLYBAR
if [ ! -d "$POLYBAR" ]; then
    echo "Making polybar dir"
    mkdir $POLYBAR
fi
echo "Setting polybar config" 
cp ./polybar/config.ini "$POLYBAR"


# PICOM
if [ ! -d "$PICOM" ]; then
    echo "Making picom dir"
    mkdir $PICOM
fi
echo "Setting picom config" 
cp ./picom/picom.conf "$PICOM"


# I3
if [ ! -d "$I3" ]; then
    echo "Making i3 dir"
    mkdir $I3
fi
echo "Setting i3 config" 
cp ./i3/config "$I3"


# ALACRITTY
if [ ! -d "$ALACRITTY" ]; then
    echo "Making alacritty dir"
    mkdir $ALACRITTY
fi
echo "Setting alacritty config" 
cp ./alacritty/alacritty.yml "$ALACRITTY"

echo "Done moving configs"
