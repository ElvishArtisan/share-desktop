#!/bin/sh

# share-desktop.sh
#
# Share the current X11 desktop via VNC
#
# To have this run automatically at login, place it in the 
# "/etc/X11/xinit/xinitrc.d/" directory.
#
# (C) Copyright 2015 Fred Gleason <fredg@paravelsystems.com>
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License version 2 as
#   published by the Free Software Foundation.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public
#   License along with this program; if not, write to the Free Software
#   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

#
# Check that we have a password set
#
if test ! -f $HOME/.vnc/passwd ; then
  exit 0
fi

#
# Run a shareable, persistent server
#
x11vnc -rfbauth $HOME/.vnc/passwd -shared -forever &
