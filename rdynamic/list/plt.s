
libdatanode.so:     file format elf32-i386

Disassembly of section .plt:

00000520 <__gmon_start__@plt-0x10>: 
 520:   ff b3 04 00 00 00       pushl  0x4(%ebx) 
 526:   ff a3 08 00 00 00       jmp    *0x8(%ebx) 
 52c:   00 00                   add    %al,(%eax) 
        ... 

00000550 <_ZN8DataNodeC1Ev@plt>:
 550:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 556:	68 10 00 00 00       	push   $0x10
 55b:	e9 c0 ff ff ff       	jmp    520 <_init+0x2c>

00000560 <_Znwj@plt>:
 560:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 566:	68 18 00 00 00       	push   $0x18
 56b:	e9 b0 ff ff ff       	jmp    520 <_init+0x2c>

00000570 <puts@plt>:
 570:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
 576:	68 20 00 00 00       	push   $0x20
 57b:	e9 a0 ff ff ff       	jmp    520 <_init+0x2c>

