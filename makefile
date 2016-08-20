PREFIX=/usr/local

all:
	cc random.c -o random

install:
	install random $(PREFIX)/bin
	install random.1 $(PREFIX)/share/man/man1/

uninstall:
	rm $(PREFIX)/bin/random
	rm $(PREFIX)/share/man/man1/random.1

clean:
	rm random
