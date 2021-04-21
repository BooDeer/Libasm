# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudhir <hboudhir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/21 13:16:38 by hboudhir          #+#    #+#              #
#    Updated: 2021/01/09 18:07:39 by hboudhir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NASM = nasm -f macho64
AR	 = ar -rc
NAME = libasm.a
SRC  = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
CC	 = gcc -Wall -Werror -Wextra


all: $(NAME)

%o: %s 
	$(NASM) $<
$(NAME): $(SRC:.s=.o)
	@echo "Creating the library."
	$(AR) $(NAME) $(SRC:.s=.o)
	ranlib $(NAME)
	#$(CC) main.c $(NAME)
	
clean:
	@rm -rf $(SRC:.s=.o)
fclean: clean
	@rm -rf $(NAME) a.out
re: fclean all
