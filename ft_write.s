section	.text
	global	_ft_write
	extern	___error
_ft_write:
	mov	rax,  0x02000004	; write syscall
	syscall
	jc	_err
	ret

_err:
	push	rax
	call 	___error
	pop		r15
	mov		[rax], r15
	mov		rax, -1
	ret
