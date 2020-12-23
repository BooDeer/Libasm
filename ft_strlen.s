section .text
    global _ft_strlen

_ft_strlen:
	mov	rax, -1				; i = -1

_loop:
	inc	rax					; i++
	mov	cl, byte [rdi + rax]; check next byte
	cmp cl, 0				; compare current byte with 0
	jne _loop				; If jump is not zero go back to _loop
	ret
