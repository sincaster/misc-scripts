#!/usr/bin/env dash

USRDATE(){
whiptail --title "Choose a date in the format hh:mm:ss" --inputbox "Here" 10 60 3>&1 1>&2 2>&3
}              

if USRDATE
then
    echo "\nProcessing..."
else
    echo "♡ Have a nice day! ♡" 
fi

while true
do 
 	DATE=`date | awk {'print $5'}`	
	sleep 1
	echo "Current date is $DATE.\n"

	if test "$DATE" = "$USRDATE"

	then 
		ffmpeg -f x11grab -s 1920x1080 -i :0.0 ~/recordAtDateVideo.mkv &
		echo -e "\033[4;31m"

	fi
done
	
