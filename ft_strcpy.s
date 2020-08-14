global _ft_strcpy

section .text
_ft_strcpy :	
		push	rbp
		mov		rbp, rsp
		sub		rsp, 32
		
		cmp		rdi, 0
		je		test1

		cmp		rsi, 0
		je		test1

		mov		qword [rbp - 8], rdi
		mov		qword [rbp - 16], rsi
		mov		qword [rbp - 24], 0
		mov		rax, qword [rbp - 8]
		mov		rdx, qword [rbp - 16]
		mov		rcx, qword [rbp - 24]

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
