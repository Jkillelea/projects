COMPILER = g++
DEBUGGER = gdb

throwBall: throwBall.cpp
	$(COMPILER) throwBall.cpp -o throwBall

debug:
	mkdir ./debug
	$(COMPILER) -g -o debug/throwBall-debug throwBall.cpp
	$(DEBUGGER) debug/throwBall-debug

clean:
	rm *.o
