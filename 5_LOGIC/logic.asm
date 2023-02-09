;   logic.asm
section .data
section .bss
section .text
    global main

main:
    push rbp
    mov rbp, rsp

    mov rax, 1
    syscall

    xor rax, rax    ; same as mov rax,0 but xor is faster than mov
    syscall

    mov rsp, rbp
    pop rbp
ret