; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strcmp.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: tuperera <tuperera@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/14 16:12:37 by tuperera       #+#    #+#                 ;
;    Updated: 2020/02/20 11:30:57 by tuperera      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global		_ft_strcmp

			section		.text
_ft_strcmp:	mov			rax, 0
			mov			rcx, 0

.loop:		mov			al, [rdi]
			mov			cl, [rsi]
			cmp			al, cl				; are letter same
			jne			.exit				; jump if letters not equal aka rsi == 0
			cmp			cl, 0				; EOS?
			je			.exittr
			cmp			al, 0				; EOS?
			je			.exittr
			inc			rdi					; increments src
			inc			rsi					; increments dst
			jmp			.loop				; jumps back to loop

.exit:		sub			rax, rcx
			ret

.exittr:	ret
