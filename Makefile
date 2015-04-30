CC=gcc
CFLAGS=-pthread -Wall

all: Server Client

Server:
Server-pthread:
	$(CC) $(CFLAGS) -DUSE_PTHREAD Server.c -o Server

Server-fork:
	$(CC) $(CFLAGS) Server.c -o Server

Client:
	$(CC) $(CFLAGS) Client.c -o Client

clean:
	rm -f Server Client
