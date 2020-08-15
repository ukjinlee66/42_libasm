global _ft_read
extern	___error

section .text

_ft_read :
		cmp		rdx, 0
		jb		error_len
		push	rbp
		mov		rbp, rsp
		mov		rax, 0x2000003
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

error_len :
		mov		qword [rax], 0
		mov		rax, -1
		ret
