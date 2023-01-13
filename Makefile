CC = gcc
CFLAGS = -g -Wall

all: clox

clox: chunk.o debug.o memory.o value.o main.o
	$(CC) $(CFLAGS) chunk.o debug.o memory.o value.o main.o -o clox.out

chunk.o: chunk.c memory.h value.h
	$(CC) $(CFLAGS) chunk.c -c chunk.o

debug.o: debug.c chunk.h value.h
	$(CC) $(CFLAGS) debug.c -c debug.o

memory.o: memory.c common.h
	$(CC) $(CFLAGS) memory.c -c memory.o

value.o: value.c memory.h
	$(CC) $(CFLAGS) value.c -c value.o

main.o: main.c common.h chunk.h debug.h
	$(CC) $(CFLAGS) main.c -c main.o

clean:
	rm *.out *.o