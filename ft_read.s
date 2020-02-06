			global		_ft_read

			section		.text
_ft_read:	mov			rax, 0x02000003         ; system call for write
			syscall					          	; invoke operating system to exit
			jnc			.exit
			mov			rax, -1
.exit:		ret
