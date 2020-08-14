global _ft_write
extern ___error

section .text

_ft_write :
		push	rbp
		mov		rbp, rsp
		mov		rax, 0x2000004
		syscall
		jc		error_handle
		mov		rsp, rbp
		pop		rbp
		ret
error_handle :
		mov		r15, rax
		call	___error
		mov		qword [rax], r15
		mov		rsp, rbp
		pop		rbp
		mov		rax, -1
		ret
