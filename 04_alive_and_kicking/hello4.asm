; hello4.asm
extern      printf      ; declare the function as external
section .data
    msg     db      "Hello, World!",0
    fmtstr  db      "This is our string: %s", 10, 0 ; print format  
section .bss
section .text
    global main

main:
    push rbp            ; function prologue
    mov rbp, rsp        ; function prologue
    mov rdi, fmtstr     ; first argument for printf
    mov rsi, msg        ; second argument for printf
    mov rax, 0          ; no xmm registers involved
    call printf         ; call the function
    mov rsp, rbp        ; function epilogue
    pop rbp             ; function epilogue
    
    mov rax, 60         ; error
    mov rdi, 0          ; error code 0 success
    syscall