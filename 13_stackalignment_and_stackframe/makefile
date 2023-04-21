alignment: alignment.o
	gcc -o alignment alignment.o -no-pie

alignment.o: alignment.asm
	nasm -f elf64 -g -F dwarf alignment.asm -l alignment.lst