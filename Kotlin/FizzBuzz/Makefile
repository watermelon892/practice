TARGET   = fizzbuzz
SRC      = $(TARGET).kt
JAR      = $(TARGET).jar
COMPILER = kotlinc
RUN      = java

all:
	$(COMPILER) $(SRC) -include-runtime -d $(JAR)
	$(RUN) -jar $(JAR)

clean:
	rm $(JAR)
