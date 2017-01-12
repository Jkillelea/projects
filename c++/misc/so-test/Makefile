CWD = $(shell pwd)
# Need to call the following in bash:
# $ export LD_LIBRARY_PATH=.

all: libs main

libs: libtest.so

libtest.so: libtest.o
	gcc -shared -fpic -o $@ $^

libtest.o: libtest.c
	gcc -c -fPIC -o $@ $^

main: main.c
	gcc -L$(CWD) -Wall -o main main.c -ltest

clean:
	rm *.o *.so
