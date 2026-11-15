# Even-Odd

A beginner NASM x86-64 Assembly project that checks
whether a number is even or odd.

## Concepts Learned

- Registers
- Bitwise AND (`and`)
- Comparison (`cmp`)
- Conditional jump (`je`)
- Linux system calls
- Labels and program flow

## Build and Run

```bash
nasm -f elf64 Even-Odd.asm -o Even-Odd.o
ld Even-Odd.o -o Even-Odd
./Even-Odd

🚀
