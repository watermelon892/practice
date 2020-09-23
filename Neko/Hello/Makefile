TARGET   = hello
SRC      = $(TARGET).neko
OUTPUT   = $(TARGET).n
COMPILER = nekoc
EXE      = neko

all:
	$(COMPILER) $(SRC) -o $(OUTPUT)

run:
	$(EXE) $(OUTPUT)

clean:
	rm $(OUTPUT)
