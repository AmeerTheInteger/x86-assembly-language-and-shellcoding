global _start

section .text

PrintHello:

mov eax, 0x4
mov ebx, 0x1
mov ecx, message
mov edx, mlen
int 0x80
ret

loopHello:

push ecx
call PrintHello
pop ecx
loop loopHello
ret

_start:

mov ecx, 0x5
call loopHello
mov eax, 0x1
mov ebx, 0x0
int 0x80


section .data

message: db "Hello world", 0x0a
mlen equ $-message
