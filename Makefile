ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 xdma-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 xdma.conf $(CONFDIR)/kvc/
	install -v -m 755 xdma-wrapper.sh $(DESTDIR)/lib/kvc/

