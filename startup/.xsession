# Commands ran on startup


# background and terminal colors
BACKGROUND=~/Pictures/Wallpapers/adv.jpg

if [ "$XDG_CURRENT_DESKTOP" = "i3" ]
then
	nitrogen --set-scaled $BACKGROUND
	polybar example &
	picom --config ~/.config/picom/picom.conf &
fi
