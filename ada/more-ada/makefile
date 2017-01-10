all: main
	$(MAKE) clean
	
main: main.adb
	gnatmake $^

clean:
	rm -rf *.ali *.o
