xrandr --output VIRTUAL1 --right-of eDP1 --mode "512x1080_60.00"
x11vnc -multiptr -clip 512x1080+1920+0 
xrandr --output VIRTUAL1 --off
