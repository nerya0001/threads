CC=gcc
FLAGS=-Wall -g

all: server newServer client

server: server.o
	$(CC) $(FLAGS) server.o -o server -lpthread

newServer: newServer.o
	$(CC) $(FLAGS) newServer.o -o newServer -lpthread

client: client.o
	$(CC) $(FLAGS) client.o -o client

client.o: client.c 
	$(CC) $(FLAGS) -c client.c 
server.o: server.c 
	$(CC) $(FLAGS) -c server.c 

newServer.o: newServer.c 
	$(CC) $(FLAGS) -c newServer.c 


.PHONY: all clean

clean :
	rm -f *.o client server newServer