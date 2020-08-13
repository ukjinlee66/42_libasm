global _ft_write

section .text

_ft_write :
		cmp		rdi, 0
		je		write_error

		cmp		rsi, 0
		je		write_error

		cmp		rdx, 0
		je		size_error

		mov		rax, 0x2000004
		syscall
		ret

write_error :
		mov		rax, -1
		ret

size_error :
		mov		rax, 0
		ret

