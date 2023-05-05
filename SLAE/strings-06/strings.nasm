
global _start

section .text

Print:
mov eax, 0x4
mov ebx, 0x1
mov ecx, cmessage
mov edx, mlen
int 0x80
ret

_start:

mov ecx, mlen
lea esi, [message]
lea edi, [cmessage]
cld
rep movsb
call Print

mov eax, 0x1
mov ebx, 0x0
int 0x80
section .data

message: db "Is this copied?", 0x0as
mlen equ $-message


section .bss
cmessage: resb 100


