#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_HLWM_GNOME = $(PREFIX)/bin/hlwm-gnome
PATH_HLWM_GNOME_DESKTOP = $(PREFIX)/share/applications/hlwm-gnome.desktop
PATH_HLWM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/hlwm-gnome.session
PATH_HLWM_GNOME_XSESSION = $(PREFIX)/share/xsessions/hlwm-gnome.desktop
PATH_GNOME_SESSION_hlwm = $(PREFIX)/bin/gnome-session-hlwm

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/hlwm-gnome-xsession.desktop $(PATH_HLWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/hlwm-gnome.desktop $(PATH_HLWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/hlwm-gnome.session $(PATH_HLWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/hlwm-gnome $(PATH_HLWM_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-hlwm $(PATH_GNOME_SESSION_hlwm)



uninstall:
	rm -f $(PATH_HLWM_GNOME)
	rm -f $(PATH_HLWM_GNOME_DESKTOP)
	rm -f $(PATH_HLWM_GNOME_SESSION)
	rm -f $(PATH_HLWM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_hlwm)



.PHONY: all install uninstall
