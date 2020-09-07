TARGET  = hello
SRC     = main.cpp
GCC     = g++
OPTIONS = -l boost_system -pthread

all:
	$(GCC) -o $(TARGET) $(SRC) $(OPTIONS) && ./$(TARGET)

clean:
	rm $(TARGET)
