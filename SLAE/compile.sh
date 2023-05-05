#!/bin/bash

echo '[+] compile with nasm'
nasm -f elf32 -o $1.o $1.nasm

echo '[+] Linking..!'
ld -o $1 $1.o

echo '[+] Done'
