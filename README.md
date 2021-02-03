# Hello World
Simple hello world in assembler

## Build & Run
```bash
$ nasm -f elf32 -o helloworld.o helloworld.s	;
$ ld -m elf_i386 -o helloworld helloworld.o	;
$ ./helloworld
```
