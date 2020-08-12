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
		cmp		byte [rbx + rcx], 0
		je		retu

		cmp		byte [rdx + rcx], 0
		je		retu
		
		mov		al, byte [rdx + rcx]
		cmp		byte [rbx + rcx], al
		jne		retu
		add		rcx, 1
		jmp		loop

retu :
		mov		ah, byte [rdx + rcx]
		cmp		[rbx + rcx], ah
		ja		retu1
		jb		retu2
		je		retu3

retu1 :
		mov eax, 1
		mov rsp, rbp
		pop rbp
		ret
retu2 :
		mov eax, -1
		mov rsp, rbp
		pop rbp
		ret
retu3 : 
		mov eax, 0
		mov rsp, rbp
		pop rbp
		ret
