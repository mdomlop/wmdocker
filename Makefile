#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
#                                                                       #
# Change these values to customize your installation and build process  #
#                                                                       #
#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

# Change this PREFIX to where you want wmdocker to be installed
PREFIX=/usr/local
# Change this XLIBPATH to point to your X11 development package's installation
XLIBPATH=/usr/X11R6/lib

# Sets some flags for stricter compiling
CFLAGS=-pedantic -Wall -W -O

#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
#                                                                 #
#  Leave the rest of the Makefile alone if you want it to build!  #
#                                                                 #
#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

PACKAGE=wmdocker
VERSION=1.5.1

target=wmdocker
sources=wmdocker.c kde.c icons.c xproperty.c net.c
headers=wmdocker.h kde.h icons.h xproperty.h net.h version.h
extra=README COPYING version.h.in

all: $(target) $(sources) $(headers)
	@echo Build Successful

$(target): $(sources:.c=.o)
	$(CC) $(CFLAGS) -L$(XLIBPATH) -lX11 \
		`pkg-config --libs glib-2.0` $^ -o $@

%.o: %.c
	$(CC) -c $(CFLAGS) `pkg-config --cflags glib-2.0` $<

version.h: version.h.in Makefile
	sed -e "s/@VERSION@/$(VERSION)/" version.h.in > $@

install: all
	install -d -m 755 $(PREFIX)/bin
	install -Dm755 $(target) $(PREFIX)/bin/$(target)
	install -d -m 755 $(PREFIX)/share/licenses
	install -Dm644 COPYING $(PREFIX)/share/licenses/$(target)/LICENSE
	install -d -m 755 $(PREFIX)/share/doc
	install -Dm644 AUTHORS $(PREFIX)/share/doc/$(target)/AUTHORS
	install -Dm644 ChangeLog $(PREFIX)/share/doc/$(target)/ChangeLog
	install -Dm644 README.md $(PREFIX)/share/doc/$(target)/README.md
	install -Dm644 THANKS $(PREFIX)/share/doc/$(target)/THANKS

uninstall:
	rm -rf $(PREFIX)/$(target) $(PREFIX)/share/doc $(PREFIX)/share/licenses

clean:
	rm -rf pkg src
	rm -f *.pkg.tar.xz
	rm -rf .dist
	rm -f core *.o .\#* *\~ $(target)

distclean: clean
	rm -f version.h
	rm -f $(PACKAGE)-*.tar.gz

dist: Makefile $(sources) $(headers) $(extra)
	mkdir -p .dist/$(PACKAGE)-$(VERSION) && \
	cp $^ .dist/$(PACKAGE)-$(VERSION) && \
	tar -c -z -C .dist -f \
		$(PACKAGE)-$(VERSION).tar.gz $(PACKAGE)-$(VERSION) && \
	rm -rf .dist

love: $(sources)
	touch $^

# local dependancies
wmdocker.o: wmdocker.c version.h kde.h icons.h wmdocker.h net.h
icons.o: icons.c icons.h wmdocker.h
kde.o: kde.c kde.h wmdocker.h xproperty.h
net.o: net.c net.h wmdocker.h icons.h
xproperty.o: xproperty.c xproperty.h wmdocker.h
