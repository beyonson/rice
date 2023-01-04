# Commands ran on startup


# background and terminal colors
BACKGROUND=~/Pictures/Wallpapers/cangles.jpg

nitrogen --set-scaled $BACKGROUND
polybar background &
polybar logo &
polybar right &
polybar date &
polybar launch &
polybar i3 &

picom --config ~/.config/picom/picom.conf &
