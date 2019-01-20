#!/bin/sh

# get yeahconsole window id
YCID=$(xwininfo -root -tree | grep yeahconsole -B 2 | head -1 | perl -p -e 's/^ *(0x.*?) .*$/$1/g')

# make transparent!
# value is between 0 (invisible) and 2^32 (fully opaque)
#xprop -id "$YCID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 3221225472
xprop -id "$YCID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 3621225472
