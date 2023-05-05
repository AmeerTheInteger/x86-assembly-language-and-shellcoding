echo '[+] Compiling with gcc'
gcc -fno-stack-protector -z execstack $1.c -o $1

echo '[+] Done'
