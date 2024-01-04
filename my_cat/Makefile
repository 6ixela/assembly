CC=gcc
CFLAGS = -no-pie -g
TARGET = my_cat

SRC=my_cat.S

$(TARGET):
	$(CC) $(CFLAGS) -o $@ $(SRC)

clean:
	$(RM) $(TARGET)