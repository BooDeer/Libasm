section	.text
	global	_ft_read
	extern	___error
_ft_read:
	mov	rax, 0x02000003	; read's syscall
	syscall
	jc	_err
	ret

_err:
	push rax
	call ___error
	pop r15
	mov  [rax], r15
	mov rax, -1
	ret