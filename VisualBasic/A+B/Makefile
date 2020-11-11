# mono-basic
TARGET   = a+b
SRC      = $(TARGET).vb
EXE      = $(TARGET).exe
COMPILER = vbnc
MONO     = mono

all:
	$(COMPILER) $(SRC) && $(MONO) $(EXE)

clean:
	rm $(EXE)
