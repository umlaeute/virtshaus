default: all

prefix=/usr/local
bindir=$(prefix)/bin
sbindir=$(prefix)/sbin


INSTALL = /usr/bin/install -c
INSTALL_DIR = ${INSTALL} -d
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}

install: all
	$(INSTALL_DIR) $(DESTDIR)$(sbindir)
	$(INSTALL_SCRIPT) virtlvm-backup $(DESTDIR)$(sbindir)

all: virtlvm-backup

.PHONY: default all install
