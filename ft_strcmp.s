			global		_ft_strcmp

			section		.text
_ft_strcmp:	mov			rax, 0
			mov			rcx, 0

.loop:		mov			dl, [rsi + rcx]
			mov			dh, [rdi + rcx]
			cmp			dl, 0				; EOS?
			je			.exittr
			cmp			dh, 0				; EOS?
			je			.exittr
			cmp			dl, dh				; are letter same
			jne			.exit				; jump if letters not equal aka rsi == 0
			inc			rcx					; increments rcx
			jmp			.loop				; jumps back to loop

.exit:		mov			al, BYTE [rsi + rcx]
			sub			al, BYTE [rdx + rcx]
			ret

.exittr:	ret
