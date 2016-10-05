all: hello oneint subprograms command_line read_and_write_file
	make clean

purge:
	rm -f \
	hello \
	oneint \
	subprograms \
	command_line \
	read_and_write_file

clean:
	rm *.o *.ali

hello: hello.adb
	gnatmake $^

command_line: command_line.adb
	gnatmake $^

subprograms: subprograms.adb
	gnatmake $^

oneint: oneint.adb
	gnatmake $^

read_and_write_file: read_and_write_file.adb
	gnatmake $^
