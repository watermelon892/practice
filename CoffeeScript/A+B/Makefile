TARGET    = a+b
COFFEESRC = $(TARGET).coffee
JSSRC     = $(TARGET).js
COMPILER  = coffee
NODE      = node

all:
	$(COMPILER) -c $(COFFEESRC) && $(NODE) $(JSSRC)

cleen:
	rm $(JSSRC)
