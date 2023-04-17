section .data
    msg1        db      "Hello World!",10,0         ;Hello World string with \n & null terminator
    msgLen      equ     $-msg1-1                    ;msg1 length
    msg2        db      "Alive and Kicking!",10,0   ;string with  \n & null t
    msg2Len     equ     $-msg2-1                    ;msg2 length
    radius      dq      357                         ;not string, number
    pi          dq      3.14                        ;not string, decimal number

section .bss
section .text
    global main

main:
    push rbp            ; function prologue
    mov rbp,rsp         ; function prologue
    mov rax, 1          ; 1 = write
    mov rdi, 1          ; 1 = to stdout
    mov rsi, msg1       ; string to display
    mov rdx, msgLen    ; length of the string
    syscall

    mov rax, 1          ; 1 = write
    mov rdi, 1          ; display the string
    mov rsi, msg2       ; string to display
    mov rdx, msg2Len    ; length of the string
    syscall

    mov rsp, rbp        ; function epilogue
    pop rbp             ; function epilogue
    mov rax, 60         ; 60 = exit
    mov rdi, 0          ; 0 = success exit code
    syscall