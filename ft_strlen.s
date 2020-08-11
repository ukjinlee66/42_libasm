global _ft_strlen

section .text
_ft_strlen :

		cmp		rdi, 0
		je		test2

		push	rbp
		mov		rbp, rsp
		sub		rsp, 16
		mov		[rbp - 8], rdi
		mov		qword [rbp - 16], 0
		mov		rax, [rbp - 8]
		mov		rcx, [rbp - 16]

loop:
		cmp		byte [rax + rcx], 0
		je		test
		add		rcx, 1
		jmp		loop
		
test:
		mov		rax, rcx
		mov		rsp, rbp
		pop		rbp
		ret
test2:
		mov		rax, 0
		mov		rsp, rbp
		pop		rbp
		ret
