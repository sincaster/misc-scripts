#!/usr/bin/dash

# You can replace "dash" with sh and bash

echo -e "\[\033[4;31m\n[=================================================]\033[0;33m"
while true
do

	echo -n "Getting the current date\n\n"
	DATE=`date | awk {'print $5'}` # this basically "slices" the output of the command called "date"
	sleep 1 # wait for one second
	echo -n "Current date is $DATE.\n"

if test "$DATE" = "10:19:00" # edit this to modify the date
			     # WARNING: MUST BE IN THE FORMAT hh:mm:ss WHERE H IS HOUR,
			     # M IS MINUTE, AND S IS SECOND, AND YES, I AM LAZY
then
	ffmpeg -f x11grab -s 1920x1080 -i :0.0 ~/DoNOTdelete.mkv & # record a 1920 by 1080 video and save it in the $HOME
								   # directory with the name "DoNOTdelete.mkv"

echo -e "\[\033[4;31m\n[=================================]"
else
	echo "Current date is not the one required for the task."

fi 
done


