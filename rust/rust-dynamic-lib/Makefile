# to make a static library tell rust you want #![crate_type = "staticlib"]
# When compiling, link against the libs it tells you to like:
# '-llib_name'
# $ gcc main.o libtest.a -o main -ldl -lpthread -lgcc_s -lc -lm -lrt

all: main

run: all
	LD_LIBRARY_PATH=. ./main

main: main.c libtest.so
	$(CC) main.c -o $@ -L. -ltest	

libtest.so: test.rs
	rustc $^

