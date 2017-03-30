all: main

run: all
	LD_LIBRARY_PATH=. ./main

main: main.c libtest.so
	$(CC) main.c -o $@ -L. -ltest	

libtest.so: test.rs
	rustc $^

