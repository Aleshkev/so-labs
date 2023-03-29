global _start

SYS_WRITE equ 1
SYS_EXIT  equ 60
STDOUT    equ 1

section .rodata

section .text

_start:
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    lea rsi, [rel .hello]
    mov rdx, .hello_end - .hello
    syscall

    jmp .hello_end  ; We need to skip db because it isn't an instruction.
    .hello:
    db `Hello World!\n`
    .hello_end:

    mov eax, SYS_EXIT
    mov edi, 0
    syscall

    ret
