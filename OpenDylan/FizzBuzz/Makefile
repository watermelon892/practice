# https://opendylan.org/
TARGET   = fizzbuzz
LID      = $(TARGET).lid
EXE      = _build/bin/$(TARGET)
COMPILER = ~/Downloads/opendylan-2019.1/bin/dylan-compiler

all:
	$(COMPILER) -build $(LID)
	$(EXE)

clean:
	rm -r ./_build/
