all: number-server

number-server: number-server.c http-server.c
	gcc -Wall -Wno-unused-variable -fsanitize=address -g number-server.c http-server.c -o number-server

clean: 
	rm -f number-server
