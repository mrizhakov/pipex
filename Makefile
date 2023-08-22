# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrizakov <mrizakov@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/31 19:54:01 by mrizakov          #+#    #+#              #
#    Updated: 2023/03/31 19:54:02 by mrizakov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



NAME = pipex

CFLAGS = -Wall -Wextra -Werror

AR = ar -rc

CC = cc


SRC= pipexutils1.c pipexutils2.c pipexutils3.c pipexutils.c pipex.c

OBJ=$(SRC:.c=.o)


all:$(NAME)

$(NAME):$(OBJ)
	$(CC) $(CFLAGS) $? -o $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -f $(NAME)

ct: fclean
	rm -f test

test: all
	$(CC) $(CFLAGS) main.c $(NAME) -o test

re: fclean all

.PHONY: all clean fclean re test ct
