TARGET   = hello
SRC      = $(TARGET).rs
COMPILER = rustc

all:
	$(COMPILER) -o $(TARGET) $(SRC) && ./$(TARGET)

clean:
	rm $(TARGET)
