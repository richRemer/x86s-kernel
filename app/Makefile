objects = $(patsubst %.c,%.o,$(wildcard *.c)) $(patsubst %.asm,%.o,$(wildcard *.asm))

default: hello.app

clean:
	rm -rf *.o *.app

hello.app: $(objects)
	ld -o $@ $^

%.o: %.c
	gcc -o $@ -c $< -nostdlib -fpic -fomit-frame-pointer

%.o: %.asm
	nasm -o $@ $< -felf64

.PHONY: default clean
