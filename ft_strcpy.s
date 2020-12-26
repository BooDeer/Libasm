section .text
	global	_ft_strcpy

_ft_strcpy:
	mov rax, -1					; i = -1

_loop:
	inc	rax						; i++
	mov	cl, byte [rsi + rax]	; [rsi + rax] = src[i]
	cmp	cl, 0					; check if the terminating character is reached
	je	_exit					; if it's equal to 0 exit
	mov	byte [rdi + rax], cl	; dst[i] = src[i]
	jmp	_loop
_exit:
	mov rax, rdi				; return dst
	ret
