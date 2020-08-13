global _ft_read

section .text

_ft_read :
		cmp		rdi, 0
		je		read_error

		cmp		rsi, 0
		je		read_error

		cmp		rdx, 0
		je		size_error

		mov		rax, 0x2000003
		syscall
		ret

read_error :
		mov		rax, -1
		ret

size_error :
		mov		rax, 0
		ret
