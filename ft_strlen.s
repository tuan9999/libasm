			global		_ft_strlen

			section		.text
_ft_strlen:	mov			rax, 0
			mov			rcx, 0

.loop:		mov			cl, [rdi + rax]
			cmp			cl, BYTE 0			; end of sentence reached?
			je			.exit				; jump if EOS reached aka rcx == 0 || '\0'
			inc			rax					; increments rax
			jmp			.loop				; jumps back to loop

.exit:		ret
