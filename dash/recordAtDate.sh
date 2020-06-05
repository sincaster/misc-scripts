#!/usr/bin/env dash

# You can replace "dash" with sh and bash,
# but please, keep dash, It's a really good shell

echo "\033[4;31m[=================================================]\033[0;33m"

# info
echo " \033[0;30m\nThe date must be in the format hh:mm:ss, where\n h is the hour, m the minute and s the second\n " 
echo "The current date is" ; echo `date | awk {'print $5'}\n`

# prompt
printf " $USER ~> "

read USRDATE

while true
do

	DATE=`date | awk {'print $5'}` # this basically "slices" the output of the command called "date"
	sleep 1 # wait for one second
	echo -n "Current date is $DATE.\n"

if test "$DATE" = "$USRDATE" 
			     
then
	ffmpeg -f x11grab -s 1920x1080 -i :0.0 ~/recordAtDateVideo.mkv & # record a 1920 by 1080 video and save it in the $HOME
								         # directory with the name "DoNOTdelete.mkv"

echo -e "\033[4;31m" 
	
fi 
done


