PREFIX ?= /usr/local

check:
	@shellcheck ./bin/history-check

install: bin/history-check
	@cp -p $< $(PREFIX)/$<

uninstall:
	@rm -f $(PREFIX)/bin/history-check

.PHONY: check install uninstall
