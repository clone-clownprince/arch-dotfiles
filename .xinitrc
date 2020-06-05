#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
	  [ -x "$f" ] && . "$f"
	  export XDG_SESSION_TYPE=X11
	  eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
	  export SSH_AUTH_SOCK
	done
	unset f
fi

mv ~/.xsession-errors ~/.xsession-errors.old
exec startxfce4 > ~/.xsession-errors 2>&1
