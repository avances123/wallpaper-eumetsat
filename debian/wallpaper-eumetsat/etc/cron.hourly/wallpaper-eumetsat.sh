#!/bin/bash
source /etc/wallpaper-eumetsat.conf
wget $URL -O $TEMPFILE
geom=$(identify -verbose $TEMPFILE | grep Geom | cut -d: -f'2' | cut -f1 -d+ | sed -e 's/ //g')
width=$(echo $geom | cut -f1 -dx)
heigth=$(echo $geom | cut -f2 -dx)
newheigth=$(expr $heigth - 25)
convert $TEMPFILE -crop ${width}x${newheigth}+0+0 $WALLPAPERIMG
gconftool-2 --type string --set /desktop/gnome/background/picture_options scaled
gconftool-2 --type string --set /desktop/gnome/background/picture_filename $WALLPAPERIMG
rm -f $TEMPFILE
