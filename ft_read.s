; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_read.s                                          :+:    :+:             ;
;                                                      +:+                     ;
;    By: tuperera <tuperera@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/14 16:12:30 by tuperera       #+#    #+#                 ;
;    Updated: 2020/02/14 16:12:33 by tuperera      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global		_ft_read

			section		.text
_ft_read:	mov			rax, 0x02000003         ; system call for read
			syscall					          	; invoke operating system to exit
			jnc			.exit
			mov			rax, -1
.exit:		ret
