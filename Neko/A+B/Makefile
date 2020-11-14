TARGET   = a+b
SRC      = $(TARGET).neko
OUTPUT   = $(TARGET).n
COMPILER = nekoc
EXE      = neko

all:
	$(COMPILER) $(SRC) -o $(OUTPUT) && $(EXE) $(OUTPUT)

clean:
	rm $(OUTPUT)
