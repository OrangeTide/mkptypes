BINDIR=/afs/.athena/contrib/watchmaker/`/bin/athena/machtype`bin
MANDIR=/afs/.athena/contrib/watchmaker/man/man1
#
# Makefile for mkptypes. Edit the lines below to suit your tastes; the default
# is for my computer (Atari ST running the gcc 1.37); a Unix configuration is
# also provided.

CC = cc
PROG = mkptypes
MANPAGE=mkptypes.1
CFLAGS = -O -DBSD

#CC = gcc
#PROG = mkptypes.ttp
#CFLAGS = -mshort -O

$(PROG) : mkptypes.c mkptypes.h
	$(CC) $(CFLAGS) -o $(PROG) mkptypes.c

clean:
	rm -f mkptypes.o

realclean: clean
	rm -f $(PROG) report core

install: $(PROG) $(MANPAGE)
	install -c -s $(PROG) $(BINDIR)/$(PROG)
	install -c $(MANPAGE) $(MANDIR)/$(MANPAGE)
