TARGET   = a_add_b
SRC      = $(TARGET).erl
COMPILER = erlc
EXE      = erl

all:
	$(COMPILER) $(SRC) && $(EXE) -noshell -s $(TARGET) main -s init stop

clean:
	rm $(TARGET).beam
