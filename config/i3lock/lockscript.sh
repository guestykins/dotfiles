#!/bin/sh

# Defining variables
ICON=$HOME/.config/i3lock/icon.png # Gentoo icon
TMPBG=/tmp/screenshot.png # Location for the temporary background
scrot /tmp/screenshot.png # Take the screenshot
convert $TMPBG -scale 10% -scale 1000% $TMPBG #Pixelate it
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG #Add the icon as an overlay
i3lock -u -e -f -t -i $TMPBG # Lock the screen with the temporary screenshot
rm $TMPBG #Remove the file for the screenshot after the screen is unlocked
