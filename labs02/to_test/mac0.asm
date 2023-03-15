section .text
        global mac0
mac0:   mov       rax,rdx
        imul      rax,rsi
        add       rax,rdi
        ret