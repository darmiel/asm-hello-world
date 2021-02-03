; --------------------------------------------- ;
;                 hello world			;
;						;
; build & run (linux, i386):			;
;						;
; $ nasm -f elf32 -o helloworld.o helloworld.s	;
; $ ld -m elf_i386 -o helloworld helloworld.o	;
; $ ./helloworld				;
; --------------------------------------------- ;

global _start

section .helloworld:
_start:
	; $ man 2 write
	; ssize_t write(int fd, const void *buf, size_t count);
	mov eax, 0x4
	mov ebx, 0x1 	; fd
	mov ecx, str_hw	; buf
	mov edx, len_hw	; count
	int 0x80

	; $ man 2 exit
	; void _exit(int status);
	mov eax, 0x1
	mov ebx, 0x0	; status
	int 0x80

section .txt:
	str_hw: db "Hello World! :)", 0xA
	len_hw: equ $-str_hw

