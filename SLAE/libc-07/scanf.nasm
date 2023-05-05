; Failed attempt ;

extern printf
extern scanf
extern exit

global main
section .text

main:

push message
call printf
add esp, 0x4

push input
call scanf
add esp, 0x4

mov eax, 0x0
call exit


section .data

message: db "Compiling with gcc and using libc", 0x0a, 0x00
section .BSS
input: resb 100