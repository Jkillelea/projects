all: hello oneint subprograms command_line read_and_write_file_line_by_line
	make clean

purge:
	rm -f \
	hello \
	oneint \
	subprograms \
	command_line \
	read_and_write_file_line_by_line

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

read_and_write_file_line_by_line: read_and_write_file_line_by_line.adb
	gnatmake $^
