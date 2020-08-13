global	_ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text

_ft_strdup :
			push		rdi

			call		_ft_strlen
			add			rax, 1

			mov			rdi, rax
			call		_malloc
			cmp			rax, 0
			je			strdup_error

			pop			rsi
			mov			rdi, rax
			call		_ft_strcpy
			ret

strdup_error :
			pop			rdi
			ret
