all: hello oneint
	make clean

purge:
	rm hello oneint

clean:
	rm *.o *.ali

hello: hello.adb
	gnatmake $^

oneint: oneint.adb
	gnatmake $^
