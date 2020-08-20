TARGET = hello
SRC    = $(TARGET).s
OBJ    = $(TARGET).o
GCC    = gcc
LD     = ld

all:
	$(GCC) -c $(SRC) && $(LD) $(OBJ) -o $(TARGET) && ./$(TARGET)

clean:
	rm $(TARGET) $(OBJ)
