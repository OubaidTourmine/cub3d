# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: outourmi <outourmi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/16 21:45:03 by yel-qori          #+#    #+#              #
#    Updated: 2025/10/18 15:43:10 by outourmi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = cub3d
CC = cc
CFLAGS = -Wall -Wextra -Werror -I../minilibx_mms_20191025_beta
LDFLAGS = -L../minilibx_mms_20191025_beta -lmlx -lX11 -lXext -lm
SRC = main.c\
	draw_map.c\
	get_next_line/get_next_line_utils.c\
	get_next_line/get_next_line.c\
	helper_functions.c\
	keys_handler.c\
	movements.c\
	raycasting.c\
	map_parsing.c\
	map_validation.c\
	map_info.c\
	utils/utils.c\
	utils/ft_strtrim.c\
	utils/ft_itoa.c
	
OBJS = ${SRC:.c=.o}

all: ${NAME}

${NAME} : ${OBJS}
	${CC} ${OBJS} ${LDFLAGS} -o ${NAME}



clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re