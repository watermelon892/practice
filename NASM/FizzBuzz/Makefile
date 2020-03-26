TARGET    = fizzbuzz
SRC       = fizzbuzz.asm
OBJ       = $(SRC:.asm=.o)
ASSEMBLER = nasm
LD        = ld

all:
	$(ASSEMBLER) -f elf64 $(SRC) -o $(OBJ)
	$(LD) $(OBJ) -o $(TARGET)

clean:
	rm $(TARGET) $(OBJ)
