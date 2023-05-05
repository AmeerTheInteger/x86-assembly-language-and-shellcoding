global _start
section .text

_start:

jmp short pushOnStack


shellcode:


xor eax, eax
mov al, 0x4

xor ebx, ebx
mov bl, 0x1

pop ecx

xor edx, edx
mov dl, 0x11
int 0x80

xor eax, eax
mov al, 0x1

xor ebx, ebx
int 0x80


pushOnStack:

call shellcode
msg: db "HelloWorld", 0xA
