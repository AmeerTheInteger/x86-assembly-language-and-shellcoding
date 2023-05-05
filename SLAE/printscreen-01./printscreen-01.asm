;This is ameer, learning how computer works

global _start


section .text

_start:

xor eax, eax
mov al, 0x4
xor ebx, ebx
mov bl, 0x1
xor ecx, ecx
mov ecx, message
xor edx,edx
mov dx, msglen
int 0x80

xor eax, eax
mov al, 0x1
xor ebx, ebx
mov bl, 0x5
int 0x80

section .data
message: db  "Printing this string on the screen", 0xa
msglen equ $-message
