TARGET   = hello
SRC      = $(TARGET).fs
DLL      = FSharp.Core.dll
COMPILER = fsharpc

all:
	$(COMPILER) $(SRC) -o $(TARGET) && ./$(TARGET)

clean:
	rm $(TARGET) $(DLL)
