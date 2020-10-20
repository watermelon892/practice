# mono-basic
TARGET   = hello
SRC      = $(TARGET).vb
EXE      = $(TARGET).exe
COMPILER = vbnc # mono-basic
MONO     = mono

all:
	$(COMPILER) $(SRC)

run:
	$(MONO) $(EXE)

clean:
	rm $(EXE)
