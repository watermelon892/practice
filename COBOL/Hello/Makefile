TARGET   = hello
SRC      = $(TARGET).cob
COMPILER = cobc

all:
	$(COMPILER) -x -O -o $(TARGET) $(SRC) && ./$(TARGET)

clean:
	rm $(TARGET)
