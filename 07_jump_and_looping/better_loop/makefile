bloop: bloop.o
	gcc -o bloop bloop.o -no-pie

bloop.o: bloop.asm
	nasm -f elf64 -g -F dwarf bloop.asm -l bloop.lst