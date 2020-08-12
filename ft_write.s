global _ft_write

section .text

_ft_write :
		cmp		rdi, 0
		je		write_error

		cmp		rsi, 0
		je		write_error

		cmp		rdx, 0
		je		size_error

		push	rbp
		mov		rbp, rsp
		sub		rsp, 32
		mov		[rbp - 8], rdi
		mov		[rbp - 16], rsi
		mov		[rbp - 24], rdx
		mov		rax, 4
		mov		rdi, [rbp - 8]
		mov		rdx, [rbp - 24]
		syscall
		ret

write_error :
		mov		rax, -1
		mov		rsp, rbp
		pop		rbp
		ret

size_error :
		mov		rax, 0
		mov		rsp, rbp
		pop		rbp
		ret

