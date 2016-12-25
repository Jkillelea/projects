CC = g++
# CCFLAGS += -std=++11
CCFLAGS += -std=gnu++1z

all: vectorIteration

vectorIteration: vectorIteration.cpp
	$(CC) $(CCFLAGS) $^ -o $@

clean:
	rm -rf vectorIteration

run:
	$(MAKE) all
	./vectorIteration
