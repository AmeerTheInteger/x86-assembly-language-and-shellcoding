global _start

section .text:
_start:

jmp begin


begin:
mov ecx, 0x5

PrintLoop:
push ecx
mov eax, 0x4
mov ebx, 0x2
mov ecx, message
mov edx, mlen
int 0x80

pop ecx
loop PrintLoop

mov eax, 0x1
mov ebx, 0x0
int 0x80


section .data:

message: db "this is not string"
mlen equ $-message
