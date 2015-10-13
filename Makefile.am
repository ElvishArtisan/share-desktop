## automake.am
##
## Top level automake.am
##
## Use automake to process this into a Makefile.in
##
##   (C) Copyright 2014-2015 Fred Gleason <fredg@paravelsystems.com>
##
##   This program is free software; you can redistribute it and/or modify
##   it under the terms of the GNU General Public License version 2 as
##   published by the Free Software Foundation.
##
##   This program is distributed in the hope that it will be useful,
##   but WITHOUT ANY WARRANTY; without even the implied warranty of
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##   GNU General Public License for more details.
##
##   You should have received a copy of the GNU General Public
##   License along with this program; if not, write to the Free Software
##   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
##

install-exec-am:	
	mkdir -p $(DESTDIR)/etc/X11/xinit/xinitrc.d
	cp share-desktop.sh $(DESTDIR)/etc/X11/xinit/xinitrc.d/

uninstall-local:	
	rm -f $(DESTDIR)/etc/X11/xinit/xinitrc.d/share-desktop.sh

rpm:	dist
	cp share-desktop-$(VERSION).tar.gz $(HOME)/rpmbuild/SOURCES/
	$(RPMBUILD) -ba --target noarch-$(VENDOR)-linux share-desktop.spec
	mv $(HOME)/rpmbuild/RPMS/noarch/share-desktop-*.rpm $(top_srcdir)/
	mv $(HOME)/rpmbuild/SRPMS/share-desktop-*.src.rpm $(top_srcdir)/
	rm $(HOME)/rpmbuild/SOURCES/share-desktop-$(VERSION).tar.gz
	rm -rf $(HOME)/rpmbuild/BUILD/share-desktop-$(VERSION)

EXTRA_DIST = autogen.sh\
             get_distro.sh\
             get_target.sh\
             share-desktop.sh\
             share-desktop.spec.in\
             PACKAGE_VERSION

CLEANFILES = *~\
             *.deb\
             *.mo\
             *.rpm\
             *.tar.gz\
             *.tgz\
             *.zip

DISTCLEANFILES = share-desktop.spec\
                 config.guess\
                 config.sub\
                 ltmain.sh

MAINTAINERCLEANFILES = *~\
                       *.tar.gz\
                       aclocal.m4\
                       config.guess\
                       config.status\
                       config.sub\
                       configure\
                       depcomp\
                       install-sh\
                       libtool\
                       ltmain.sh\
                       Makefile.in\
                       missing\
                       mkinstalldirs
