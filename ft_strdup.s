			global		_ft_strdup
			extern		_malloc
			extern		_ft_strlen
			extern		_ft_strcpy
			section		.text
_ft_strdup:	mov			rax, 0
			push		rdi					; save argument

.loop:		call		_ft_strlen			; get string length of arg
			mov			rdi, rax			; copy over size of malloc
			call		_malloc
			cmp			rax, 0				; null error?
			je			.exiterr
			pop			rsi					; original string
			mov			rdi, rax			; allocate dest string
			call		_ft_strcpy
			ret

.exiterr:	mov			rdi, 0
			ret
