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

%: %.adb
	gnatmake $^
