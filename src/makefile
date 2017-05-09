CC=g++
CFLAGS=-g -O3 -Wall -std=c++11

all: test 

test: test.o gmark.o configparser.o pugixml.o randomgen.o config.o 
	$(CC) test.o gmark.o configparser.o randomgen.o pugixml.o config.o  -o test

test.o: test.cpp configparser.h config.h gmark.h
	$(CC) $(CFLAGS) -c test.cpp

config.o: config.cpp config.h randomgen.h
	$(CC) $(CFLAGS) -c config.cpp

gmark.o: gmark.cpp gmark.h config.h randomgen.h
	$(CC) $(CFLAGS) -c gmark.cpp

randomgen.o: randomgen.cpp randomgen.h
	$(CC) $(CFLAGS) -c randomgen.cpp

configparser.o: configparser.cpp config.h configparser.h
	$(CC) $(CFLAGS) -c configparser.cpp

	
pugixml.o: pugixml.cpp pugixml.hpp 
	$(CC) $(CFLAGS) -c pugixml.cpp

	
clean:
	rm -rf *.o test
