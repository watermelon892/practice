TARGET   = hanoi
SRC      = $(TARGET).spider
JS_SRC   = $(TARGET).js
MAP      = $(TARGET).map
NODE     = node
COMPILER = spider

all:
	$(COMPILER) -c --target=ES6 $(SRC)
	$(NODE) $(JS_SRC)

clean:
	rm $(JS_SRC) $(MAP)
