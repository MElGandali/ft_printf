# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mel-gand <mel-gand@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/25 22:54:59 by mel-gand          #+#    #+#              #
#    Updated: 2022/10/25 22:55:18 by mel-gand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = gcc
AR = ar rc

CFLAGS = -Wall -Wextra -Werror
RM = rm -rf
SRC = ft_printf.c ft_printstr.c ft_printnbr.c ft_printchar.c ft_printuint.c ft_printhex.c ft_printpi.c
OBJ = $(SRC:.c=.o)

all:$(NAME)

$(NAME):$(OBJ)
	@$(AR) $@ $^

%.o:%.c
	@$(CC) -c $< -o $@

clean:
	@$(RM) $(OBJ)
fclean: clean
	@$(RM) $(NAME)
re: fclean all

.PHONY: all clean re
