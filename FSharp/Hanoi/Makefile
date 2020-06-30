TARGET   = hanoi
SRC      = $(TARGET).fs
DLL      = FSharp.Core.dll
COMPILER = fsharpc

all:
	$(COMPILER) $(SRC) -o $(TARGET)

run:
	./$(TARGET)

clean:
	rm $(TARGET) $(DLL)
