ASM := nasm
FLAGS := -f elf64
LD := ld

all: hello

%: %.o
	$(LD) $^ -o $@

%.o: %.asm
	$(ASM) $(FLAGS) $^

clean:
	rm *.o
