# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rejocic <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/09 18:58:11 by rejocic           #+#    #+#              #
#    Updated: 2018/09/04 23:12:12 by rejocic          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = GNL

CC = @gcc -Wall -Werror -Wextra -fsanitize=address

SRC = main.c get_next_line.c

OBJS = $(SRC:.c=.o)

LIB = ./libft/libft.a

.PHONY: clean fclean re

all: $(NAME) $(LIB)

$(NAME): $(OBJS) $(LIB)
	$(CC) -o $(NAME) $(OBJS) $(LIB)

$(LIB):
	@cd libft && make

bug: $(OBJS) $(LIB)
	gcc -o bugging -g $(SRC) $(LIB)

clean:
	@cd libft && make clean
	@rm -rf bugging bugging.dSYM
	@rm -f $(OBJS)

fclean: clean
	@cd libft && make fclean
	@rm -rf bugging bugging.dSYM
	@rm -rf $(NAME)

re: fclean all
