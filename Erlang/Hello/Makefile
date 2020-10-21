TARGET   = hello
SRC      = $(TARGET).erl
COMPILER = erlc
EXE      = erl

all:
	$(COMPILER) $(SRC)

run:
	$(EXE) -noshell -s $(TARGET) main -s init stop

clean:
	rm $(TARGET).beam
