TARGET = fizzbuzz
SRC    = fizzbuzz.s
GCC    = gcc
LD     = ld
OBJ    = $(SRC:.s=.o)

all:
	$(GCC) -c $(SRC)
	$(LD) $(OBJ) -o $(TARGET)

clean:
	rm $(TARGET) $(OBJ)
