; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strcpy.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: tuperera <tuperera@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/14 16:12:44 by tuperera       #+#    #+#                 ;
;    Updated: 2020/03/01 14:15:10 by tuperera      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global		_ft_strcpy

			section		.text
_ft_strcpy:	mov			rax, 0
			mov			rcx, 0

.loop:		mov			r9b, BYTE [rsi + rcx]	; src
			mov			BYTE [rdi + rcx], r9b	; copy over letter
			cmp			BYTE r9b, 0				; EOS?
			je			.exit
			inc			rcx					; increments rcx
			jmp			.loop				; jumps back to loop

.exit:		mov			rax, rdi
			ret
