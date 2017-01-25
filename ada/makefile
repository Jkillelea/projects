all: hello oneint subprograms command_line read_and_write_file arrays
	make clean

purge:
	rm -f \
	hello \
	oneint \
	subprograms \
	command_line \
	read_and_write_file \
	arrays

clean:
	rm *.o *.ali

%: %.adb
	gnatmake $^
