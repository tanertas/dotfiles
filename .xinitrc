#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

SESSION=${1:-jwm}
CK=ck-launch-session
([ -f /etc/fedora-release ] || [ -f /etc/debian_version ]) && unset CK
LAUNCH="exec $CK dbus-launch --sh-syntax --exit-with-session"
#LAUNCH="exec ck-launch-session"
case $SESSION in
	i3|i3wm		) $LAUNCH i3;;
	kde		) $LAUNCH startkde;;
	xfce|xfce4	) $LAUNCH startxfce4;;
	openbox		) tint2&  $LAUNCH openbox-session;;
	blackbox	) $LAUNCH blackbox;;
	fb		) $LAUNCH startfluxbox;;
	wmaker		) $LAUNCH wmaker;;
	lxqt		) $LAUNCH startlxqt;;
	jwm		) $LAUNCH jwm;;
	*		) exec $LAUNCH $1;;
esac
