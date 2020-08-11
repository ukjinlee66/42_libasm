global _ft_strcpy

section .text
_ft_strcpy :
		
		cmp		rdi, 0
		je		test1

		cmp		rsi, 0
		je		test1

		push	rbp
		mov		rbp, rsp
		sub		rsp, 32
		mov		[rbp - 8], rdi
		mov		[rbp - 16], rsi
		mov		qword [rbp - 24], 0
		mov		rax, [rbp - 8]
		mov		rdx, [rbp - 16]
		mov		rcx, [rbp - 24]

loop :
		cmp		byte [rdx + rcx], 0
		je		test2
		mov		bl, byte [rdx + rcx]
		mov		byte [rax + rcx], bl
		add		rcx, 1
		jmp		loop

test1:
		mov		rax, 0
		mov		rsp, rbp
		pop		rbp
		ret

test2:
		mov		byte [rax + rcx], 0
		mov		rsp, rbp
		pop		rbp
		ret
