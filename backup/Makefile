default: all

prefix=/usr/local
bindir=$(prefix)/bin


INSTALL = /usr/bin/install -c
INSTALL_DIR = ${INSTALL} -d
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}

install: all
	$(INSTALL_DIR) $(DESTDIR)$(bindir)
	$(INSTALL_SCRIPT) virtlvm-backup $(DESTDIR)$(bindir)

all: virtlvm-backup

.PHONY: default all install
