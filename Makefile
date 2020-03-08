# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: tuperera <tuperera@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2020/02/03 14:20:13 by tuperera       #+#    #+#                 #
#    Updated: 2020/02/14 16:13:12 by tuperera      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

FLAGS = -Wall -Werror -Wextra

SRC = ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s

OBJ = $(SRC:.s=.o)

.PHONY: clean fclean re all bonus library

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $?

%.o: %.s
	nasm -fmacho64 $<

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
