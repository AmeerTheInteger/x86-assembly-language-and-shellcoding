extern printf
extern exit

global main
section .text

main:

push message
call printf
call exit


section .data

message: db "Compiling with gcc and using libc", 0x0a, 0x00