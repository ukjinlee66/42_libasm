# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: youlee <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/13 19:12:02 by youlee            #+#    #+#              #
#    Updated: 2020/08/14 17:55:56 by youlee           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

CC = gcc

CFLAG = -Wall -Wextra -Werror

NASM = nasm -f macho64

SRCS = ft_strlen.s \
	   ft_strcmp.s \
	   ft_strcpy.s \
	   ft_write.s \
	   ft_read.s \
	   ft_strdup.s

OBJS = $(SRCS:%.s=%.o)

all : $(NAME)


%.o : %.s
	$(NASM) $< -o $@

$(NAME) : $(OBJS)
		@ar rc $(NAME) $(OBJS)
		$(CC) main.c -lasm -L . -o libasm
clean : 
		@rm -rf $(OBJS)

fclean : clean
		@rm -rf $(NAME) libasm

re : fclean all

.PHONY : all fclean clean re
