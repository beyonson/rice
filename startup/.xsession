# Commands ran on startup


# background and terminal colors
BACKGROUND=~/Pictures/Wallpapers/cangles.jpg

nitrogen --set-scaled $BACKGROUND
polybar background &
polybar main &
sxhkd &

picom --config ~/.config/picom/picom.conf &
