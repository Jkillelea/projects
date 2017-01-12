all: main
	$(MAKE) clean

main: main.adb persons.adb
	gnatmake $^

clean:
	rm -rf *.ali *.o
