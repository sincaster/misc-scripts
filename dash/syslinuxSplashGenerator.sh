#!/bin/dash

set -e 
read filename

if [ ! -f $PWD/$filename ]; then
	printf "Image does not exist\n"
	exit 3
fi

 convert $filename +append -colors 14 -resize 640x300 syslinux-splash.png
 printf "Now don't forget to move the file syslinux-splash.png to /boot/syslinux as root and write in your /boot/syslinux/syslinux.cfg 'MENU BACKGROUND syslinux-splash.png'. 
You will need to edit the file as root.\n" 
