			global		_ft_strcpy

			section		.text
_ft_strcpy:	mov			rax, 0
			mov			rcx, 0

.loop:		mov			r9b, [rdi + rcx]	; src
			mov			[rsi + rcx], r9b	; copy over letter
			cmp			r9b, 0				; EOS?
			je			.exit
			inc			rcx					; increments rcx
			jmp			.loop				; jumps back to loop

.exit:		mov			rax, rsi
			ret
