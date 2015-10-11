push   %ebp					; save previous stack frame address
mov	   %esp,%ebp			; save new stack frame address to register ebp
push   %edi
push   %ebx					; saving register ebx, edi on stack
sub	   $0x410,%esp			; allocate 0x410 bytes space on stack
mov	   %gs:0x14,%eax		
mov	   %eax,-0xc(%ebp)		; protection for stack overflow
xor	   %eax,%eax			; reset register eax to 0
lea	   -0x40c(%ebp),%ebx	; beginning address of array 

mov	   $0x0,%eax			; set register eax to 0
mov	   $0x100,%edx			; size of the array(1024)
mov	   %ebx,%edi			; beginning address to register edi
mov	   %edx,%ecx			; ecx's value is 0x100
rep stos %eax,%es:(%edi)	; loop to initialize the array
mov	   -0xc(%ebp),%eax
xor	   %gs:0x14,%eax		; stack overflow detect
je     8048441 <func+0x3d>
call   8048320 <__stack_chk_fail@plt>
add    $0x410,%esp			; restore esp
pop	   %ebx					; restore ebx
pop	   %edi					; restore edi
pop	   %ebp					; pop the previous stack frame's address to ebp
ret							; return
