CC = gcc
CFLAGS = -g -Wall

INCLUDES=
LFLAGS=
LIBS=

SRCS = chunk.c debug.c memory.c value.c vm.c scanner.c compiler.c main.c
OBJS = $(SRCS:.c=.o)
MAIN = clox

.PHONY: depend clean

all: $(MAIN)

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) *.o $(MAIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^

# DO NOT DELETE THIS LINE -- make depends needs it