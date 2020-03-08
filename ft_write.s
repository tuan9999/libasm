; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_write.s                                         :+:    :+:             ;
;                                                      +:+                     ;
;    By: tuperera <tuperera@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/14 16:13:02 by tuperera       #+#    #+#                 ;
;    Updated: 2020/02/14 16:13:04 by tuperera      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global		_ft_write

			section		.text
_ft_write:	mov			rax, 0x02000004         ; system call for write
			syscall					          	; invoke operating system to exit
			jnc			.exit
			mov			rax, -1
.exit:		ret
