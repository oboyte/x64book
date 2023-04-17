extern printf
section .data
    data1       dq      45
    data2       dq      45
    msgGr       db      "rax greater than rbx", 10, 0
    msgLs       db      "rax lesser than rbx", 10, 0
    msgEq       db      "rax & rbx are equals", 10, 0

section .bss
section .text
    global main
main:
    push rbp
    mov rbp, rsp
    mov rax, [data1]
    mov rbx, [data2]
    cmp rax, rbx
    je equal
    jge greater
    mov rdi, msgLs
    mov rax, 0
    call printf
    jmp exit
equal:
    mov rdi, msgEq
    mov rax, 0
    call printf
    jmp exit
greater:
    mov rdi, msgGr
    mov rax, 0
    call printf
exit:
    mov rsp, rbp
    pop rbp
    ret