PREFIX ?= /usr/local

install: bin/history-check
	@cp -p $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/history-check

.PHONY: install uninstall
