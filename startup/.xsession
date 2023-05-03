# Commands ran on startup


# background and terminal colors
BACKGROUND=~/Pictures/Wallpapers/adv.jpg

if [ "$XDG_CURRENT_DESKTOP" = "i3" ]
then
	nitrogen --set-scaled $BACKGROUND
	polybar background &
	sleep 100ms
	polybar logo &
	sleep 100ms
	polybar date &
	sleep 100ms
	polybar launch &
	sleep 100ms
	polybar i3 &
	sleep 100ms
	polybar right &
	sleep 100ms

	picom --config ~/.config/picom/picom.conf &
fi
