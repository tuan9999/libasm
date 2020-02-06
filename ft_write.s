			global		_ft_write

			section		.text
_ft_write:	mov			rax, 0x02000004         ; system call for write
			syscall					          	; invoke operating system to exit
			jnc			.exit
			mov			rax, -1
.exit:		ret
