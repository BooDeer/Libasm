section     .text
            global	_ft_strdup
			extern	___error
			extern	_ft_strlen
			extern	_ft_strcpy
			extern	_malloc

_ft_strdup:
			push	rdi
			call	_ft_strlen
			inc		rax
			mov		rdi, rax
			call	_malloc
			cmp		rax, 0
			je		_err
			mov		rdi, rax
			pop		rsi
			call	_ft_strcpy
			ret

_err:
			call	___error
			pop		r8
            mov     [rax], byte 12
            mov     rax, -1
            ret