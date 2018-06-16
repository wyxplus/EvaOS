.code16

.global _bootstart

.equ BOOTSEG, 0x07c0

# 16-real mode
# SEG:OFFSET e.g 0x07c0:0x0000 -> SEG<<4 + OFFSET = 0x7c00

ljmp $BOOTSEG, $_bootstart

_bootstart:
	jmp _bootstart
	

.= 510

signature:
	.word 0xaa55
	
