global _start
section .text

_start:


xor eax, eax
mov al, 0x4

xor ebx, ebx 
mov bl, 0x1

xor edx, edx
push edx

push 0x6e2f646c 
push 0x726f776f
push 0x6c6c6548

;pop ecx
mov ecx, esp

mov dl, 0x10
int 0x80

xor eax, eax
mov al, 0x1
int 0x80
