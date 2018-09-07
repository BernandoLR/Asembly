segment .text		; code segment



	global _start	; must be declared for linker

_start: 			; tell linker enty point
	mov edx,len
	mov ecx,msg
	mov ebx,1
	mov eax,4		;system call number (sys_write)
	int 0x80		;call kernel
	
	mov eax,1
	int 0x80		;call kernel
	
	
segment .data
msg		db 'Hello, world!' ,0xa
len		equ $ - msg 
