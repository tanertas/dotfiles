#!/bin/sh
#pulseaudio -k > /dev/null 2>&1
#pulseaudio -D > /dev/null 2>&1
#urxvtd &
dunst &
stardict &
lxpolkit &
#(sleep 1 && pulseaudio --start) &
nm-applet &
#(usleep 100000 && compton) &
#(sleep 3 && dbus-launch thunar --daemon) &
#(sleep 2 && dbus-launch caja --no-desktop -n) &
(sleep 1 && pcmanfm --no-desktop -d) &
(sleep 2 && yeahconsole) &
#(sleep 4 && conky -q -d) &
(sleep 5 && ~/bin/yeah-trans.sh) &
(sleep 1 && fbsetbg -l) &
(sleep 1 && pnmixer) &
#(sleep 5 && allow_rgb10_configs=false compton) &
# Make the keyring daemon ready to communicate with nm-applet
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
# Ensure dbus is either already running, or safely start it
	if [ -z "$DBUS_SESSION_BUS_ADDRESS" ];
	then
		eval $(dbus-launch --sh-syntax --exit-with-session)

	fi
