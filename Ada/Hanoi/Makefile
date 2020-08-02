TARGET   = hanoi
SRC      = $(TARGET).ada
COMPILER = gnatmake
CLEANER  = gnatclean

all:
	$(COMPILER) -o $(TARGET) $(SRC)

run:
	./$(TARGET)

clean:
	$(CLEANER) $(TARGET)
