global _start


section .text:


_start:


mov eax, 0x4
mov ebx, 0x2
mov ecx, message
mov edx, mlen
int 0x80

mov eax, 0x1
mov ebx, 0x0
int 0x80


section .data:

message: db "this is not string"
mlen equ $-message
