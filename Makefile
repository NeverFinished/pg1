CC=gcc
CFLAGS=-O2 -ggdb -Wall -Iinclude
LIBS=-Llib -lcs -lm
SHELL=/bin/bash
OBJ=main.o

all: project

project: $(OBJ)
	$(CC) -o project $(OBJ) $(LIBS)

clean:
	rm -f *.o project

run: project
	./project

submit:
	@read -p "Your name: " NAME; echo Submitting for $$NAME; curl -F "connect4=@connect4.c;filename=connect4_$${NAME//\ /_}.c" http://pg1.sysv.de/submit.php; echo Done.
