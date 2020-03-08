; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strdup.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: tuperera <tuperera@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/14 16:12:51 by tuperera       #+#    #+#                 ;
;    Updated: 2020/03/01 14:20:41 by tuperera      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global		_ft_strdup
			extern		_ft_strlen
			extern		_ft_strcpy
			extern		_malloc
			section		.text
_ft_strdup:	sub			rsp, 8
			push		rdi					; save argument
			call		_ft_strlen			; get string length of arg
			inc			rax					; ++ for null 
			mov			rdi, rax			; copy over size of malloc
			call		_malloc
			cmp			rax, 0				; null error?
			je			.exiterr
			pop			rsi					; original string
			mov			rdi, rax			; allocate dest string
			call		_ft_strcpy
			add			rsp, 8
			ret

.exiterr:	mov			rax, 0
			ret
