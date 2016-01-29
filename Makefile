SHELL=/bin/bash
CC=gcc #-pedantic -ansi #-DNDEBUG
CFLAGS=-g
LDFLAGS=-l fl
LEX=flex

all: scanner Test

scanner: scanner.o 
	${CC} -o $@ $^ ${LDFLAGS} 

scanner.o: scanner.c
scanner.c: scanner.l
	${LEX} -o $@ $<

clean::
	${RM} *nner
	${RM} *.c *.o 
	${RM} *.o *~ .*~

# you probably won't have this
-include Solution.mak
