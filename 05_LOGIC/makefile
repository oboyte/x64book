logic: logic.o
	gcc -o logic logic.o -no-pie

logic.o: logic.asm
	nasm -f elf64 -g -F dwarf logic.asm -l logic.lst