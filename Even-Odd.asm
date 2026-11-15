section .data
    even_msg db "EVEN", 10
    even_len equ $ - even_msg

    odd_msg db "ODD", 10
    odd_len equ $ - odd_msg

section .text
    global _start

_start:
    mov rax, 12         ; Input number

    and rax, 1          ; Check last bit

    cmp rax, 0
    je EVEN

ODD:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, odd_msg
    mov rdx, odd_len
    syscall
    jmp EXIT

EVEN:
    mov rax, 1
    mov rdi, 1
    mov rsi, even_msg
    mov rdx, even_len
    syscall

EXIT:
    mov rax, 60         ; sys_exit
    xor rdi, rdi
    syscall