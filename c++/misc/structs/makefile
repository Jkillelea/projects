COMPILER=g++
EXECUTABLE_NAME=struct_test

all: struct_test

struct_test: struct_test.cpp
	$(COMPILER) struct_test.cpp -o $(EXECUTABLE_NAME)

clean:
	rm -f struct_test \
		  *.o

assembly:
	$(COMPILER) -S struct_test.cpp
