CC = gcc-5
GNATBIND = gnatbind-5
GNATLINK = gnatlink-5

all: guessing_game

guessing_game: guessing_game.adb
	$(CC) -c $^
	$(GNATBIND) -x guessing_game.ali
	$(GNATLINK)    guessing_game.ali

clean:
	rm *.ali *.o
