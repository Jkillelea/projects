all: hello oneint subprograms
	make clean

purge:
	rm -f hello oneint subprograms

clean:
	rm *.o *.ali

hello: hello.adb
	gnatmake $^

subprograms: subprograms.adb
	gnatmake $^

oneint: oneint.adb
	gnatmake $^
