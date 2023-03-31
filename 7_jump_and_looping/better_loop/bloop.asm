extern printf
section .data
    number      dq      1000000000
    fmt         db      "The sum from 0 to %ld is %ld", 10, 0
section .bss
section .text
    global main
main:
    push rbp
    mov rbp, rsp
    mov rcx, [number]   ; counter (goes down from number to 0)
    mov rax, 0          ; clear rax

bloop:
    add rax,rcx
    loop bloop  ; subtracts 1 from rcx register, until rcx is 0.
                ; rcx is tied to the loop instruction.
    mov rdi, fmt
    mov rsi, [number]
    mov rdx, rax
    call printf
    mov rsp, rbp
    pop rbp
    ret