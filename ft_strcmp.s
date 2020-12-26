;section	.text
;	global	_ft_strcpy

;_ft_strcpy:
;	mov	rax, -1					; i = -1

;_loop:
;	inc	rax						; i++
;	mov	cl, byte [rdi + rax]	; [rdi + rax] = s1[i]
;	mov	dl, byte [rsi + rax]	; [rsi + rax] = s2[i]
;	cmp	cl, dl					; compare dl to cl
;	jne	_exit_diff				;

;_exit_diff:
;	rax 
