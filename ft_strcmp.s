global _ft_strcmp

section .text
_ft_strcmp :
		push	rbp
		mov		rbp, rsp
		sub		rsp, 32
		mov		[rbp - 8], rdi
		mov		[rbp - 16], rsi
		mov		qword [rbp - 24], 0
		mov		rbx, [rbp - 8]
		mov		rcx, [rbp - 24]
		mov		rdx, [rbp - 16]
loop :
		cmp		byte [rax + rcx], 0
		jmp		test
		
