
all :
	nasm -fmacho64 ft_strcpy.s
	ar rc libasm.a ft_strcpy.o
	gcc main.c -lasm -L.
	./a.out
