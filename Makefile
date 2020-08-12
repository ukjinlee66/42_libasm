
all :
	nasm -fmacho64 ft_write.s
	ar rc libasm.a ft_write.o
	gcc main.c -lasm -L.
	./a.out
