TARGET   = hello
TSSRC    = $(TARGET).ts
JSSRC    = $(TARGET).js
COMPILER = tsc
NODE     = node

all:
	$(COMPILER) $(TSSRC) && $(NODE) $(JSSRC)

clean:
	rm $(JSSRC)
