TARGET   = hanoi
COMPILER = ghc
SRC      = main

all:
	$(COMPILER) -dynamic $(SRC).hs -o $(TARGET) && ./$(TARGET)

clean:
	rm $(TARGET) $(SRC).hi $(SRC).o
