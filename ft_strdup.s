global	_ft_strdup
extern _malloc
extern _ft_strlen
section .text

_ft_strdup :
			push		rbp
			mov			rbp, rsp
			sub			rsp, 32
			mov			[rbp - 8], rdi
			mov			qword [rbp - 16], 0
			mov			qword [rbp - 20], 0
			mov			rax, [rbp - 8]
			mov			rcx, [rbp - 16]
			mov			rdx, [rbp - 20]
loop :
			cmp			byte [rax + rcx], 0
			je			strdup2
			add			rcx, 1
			jmp			loop
strdup2 :
			mov			rdi, rcx
			call		_malloc
