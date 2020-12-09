TARGET   = a+b
SRC      = $(TARGET).cs
COMPILER = mcs

all:
	$(COMPILER) $(SRC) -out:$(TARGET) && ./$(TARGET)

clean:
	rm $(TARGET)
