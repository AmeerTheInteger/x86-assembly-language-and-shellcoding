global _start
_start:

mov eax, 0x11223344
mov ebx, [eax]
;lea ecx, ebx
lea ecx, [ebx]

mov eax, 1
mov ebx, 0
int 0x80
