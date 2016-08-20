PREFIX=/usr/local

all:
	cc random.c -o random

install:
	install random $(PREFIX)/bin

clean:
	rm random
