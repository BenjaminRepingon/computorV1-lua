# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbenjami <rbenjami@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/24 10:59:29 by rbenjami          #+#    #+#              #
#    Updated: 2015/03/24 11:20:51 by rbenjami         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

export	CC		=	cc

NAME			=	lpeg.so

# Your platform. See PLATS for possible values.
PLAT			=	macosx

all:			$(NAME)

$(NAME):
	@make $(PLAT) -C ./lua
	@make $(PLAT) -C ./lpeg
	@ln -s ./lpeg/lpeg.so ./lpeg.so
	@echo "\033[33m"compilation of lua and lpeg lib : "\033[32m"Success"\033[0m"

clean:
	@/bin/rm -f ./lpeg.so
	@echo "\033[31m"Objects of $(NAME) : deleted"\033[0m"

fclean:			clean
	@make clean -C ./lua
	@make clean -C ./lpeg
	@echo "\033[31m"$(NAME) : deleted"\033[0m"

re:				fclean all

.PHONY:			all clean fclean re

