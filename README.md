WMDocker
========

Docking System Tray. WMDocker is only a new name for the original Docker
program.

You can download the original source from
[here](https://icculus.org/openbox/2/docker/docker-1.5.tar.gz)

￼
In addition, such code is avaible in
[github](https://github.com/kordless/docker)

More info:

- <http://gnu.gds.tuwien.ac.at/directory/gui/docker.html>

- <https://icculus.org/openbox/2/docker/>

The reason to host it in github with a new name is that it seems that the
original project is abandoned, and is almost unavailable in any current
distribution.

In addition to conflicting its name (`docker`) with the most current, largest
and most well-known project called as well
[Docker](https://www.docker.com/what-docker).

To resolve this I have decided to host the latest known version (1.5) with the
name `wmdocker` as I think I have seen it there in debian (I think)

Since I have replaced all the references to `docker` with` wmdocker` in the
code I decided, for prudence, to also update the version to 1.5.1. No
further changes.

Although the original docker project seems abandoned, the program still works
quite well, and, in my opinion, better than other alternatives also valid, such
as `stalonetray` or `trayer`. That's why I upload it to github.

So that the code is easily available to anyone who wants to package it for a
distribution. I have personally added a PKGBUILD for Arch Linux.

---

***  The following is the contents of the original README file: ***

---

Docker - Docking System Tray

Copyright (C) 2003  Ben Jansens


What is Docker?

Docker is a docking application (WindowMaker dock app) which acts as a system
tray for KDE3 and GNOME2. It can be used to replace the panel in either
environment, allowing you to have a system tray without running the KDE/GNOME
panel.


What window managers can I use Docker with?

I wrote and designed Docker to work with Openbox 2, but it should work fine in
any window manager that supports WindowMaker dock apps.


Why don't my KDE3 system tray icons show up?

Docker requires a KDE3 compliant window manager to handle KDE3 system tray
icons, and since it is a docking application, the window manager needs to also
support WindowMaker Dock Apps. The only window manager that meets these
requirements to my knowledge is:
 - Openbox 2 (http://icculus.org/openbox)
If you know of any other window managers that support the KDE3 hints for the
system tray and docking apps (i.e. that docker works in), please let me know so
I can add them to this list, and test docker out in them!


Why don't my GNOME2 system tray icons show up?

I don't know! Email me and let me know what application isn't working. (Don't
you dare email me about a GNOME1 application! :)


Who wrote Docker?

Me, of course. That is, Ben Jansens. I can be reached at <ben@orodu.net>. I am
the founder and currently the project head of sorts for the Openbox project.


===============================
|| INSTALLATION INSTRUCTIONS ||
===============================

To install this application, simply do the following:

% make
(as root)
# make install

You can change a couple of things in the Makefile if you want to:
PREFIX defines where the program will be installed to.
XLIBPATH defines where your libX11.so is located. If it is not on the standard
         /usr/X11R6/lib path, then you will have to change this.

==================
|| LICENSE INFO ||
==================

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
