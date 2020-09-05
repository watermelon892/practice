TARGET   = hello
SRC      = $(TARGET).ada
COMPILER = gnatmake
CLEANER  = gnatclean

all:
	$(COMPILER) -o $(TARGET) $(SRC) && ./$(TARGET)

clean:
	$(CLEANER) $(TARGET)
