#!/bin/sh
#shutdown script
xmessage "Are you sure you want to shut down your computer?" -center -title "Take action" -default "Cancel" -buttons "Restart Openbox":1,"Logout":2,"Reboot":3,"Shutdown":4,"Cancel":5

case $? in
    1)
        openbox --restart;;
    2)
        openbox --exit;;
    3)
        sudo /sbin/reboot;;
    4)
	sudo /sbin/halt -p;;
    5)
	echo "Exit";;
esac
