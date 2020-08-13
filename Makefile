
all :
	nasm -fmacho64 ft_read.s
	ar rc libasm.a ft_read.o
	gcc main.c -lasm -L.
	./a.out
