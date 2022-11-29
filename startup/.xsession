# Commands ran on startup


# background and terminal colors
BACKGROUND=~/Pictures/Wallpapers/ducks.jpg

nitrogen --set-scaled $BACKGROUND
polybar bar1 &

picom --config ~/.config/picom.conf &
