all: cpuid

CC := gcc
CFLAGS := -std=gnu89 -Wall -Wextra -O2 -fno-strict-aliasing
OBJECTS := cache.o cpuid.o feature.o main.o

cpuid: $(OBJECTS)
	$(CC) -o $@ $(OBJECTS)

clean:
	-rm cpuid
	-rm $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

