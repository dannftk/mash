all: shell my_pause slow_cooker

shell: shell.o logging.o
	clang -D_POSIX_C_SOURCE -Wall -std=c99 -o shell shell.o logging.o

shell.o: shell.c shell.h
	clang -D_POSIX_C_SOURCE -Wall -g -std=c99 -c shell.c

logging.o:logging.c logging.h
	clang -Wall -g -std=c99 -c logging.c

my_pause: my_pause.c
	clang -D_POSIX_C_SOURCE -Wall -Og -std=c99 -o my_pause my_pause.c

slow_cooker: slow_cooker.c
	clang -D_POSIX_C_SOURCE -Wall -Og -std=c99 -o slow_cooker slow_cooker.c

clean:
	rm -rf shell.o logging.o shell my_pause slow_cooker




