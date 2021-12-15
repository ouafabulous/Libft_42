# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: omoudni <omoudni@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/03 14:51:52 by omoudni           #+#    #+#              #
#    Updated: 2021/12/03 18:23:58 by omoudni          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	ft_isalpha.c\
				ft_isdigit.c\
				ft_isalnum.c\
				ft_isascii.c\
				ft_isprint.c\
				ft_strlen.c\
				ft_memset.c\
				ft_bzero.c\
				ft_memcpy.c\
				ft_memmove.c\
				ft_strlcpy.c\
				ft_strlcat.c\
				ft_toupper.c\
				ft_tolower.c\
				ft_strchr.c\
				ft_strrchr.c\
				ft_strncmp.c\
				ft_memchr.c \
				ft_memcmp.c\
				ft_strnstr.c\
				ft_atoi.c\
				ft_calloc.c\
				ft_strdup.c\
				ft_substr.c\
				ft_strjoin.c\
				ft_strtrim.c\
				ft_split.c\
				ft_itoa.c\
				ft_strmapi.c\
				ft_striteri.c\
				ft_putchar_fd.c\
				ft_putstr_fd.c\
				ft_putendl_fd.c\
				ft_putnbr_fd.c\

OBJS		=	${SRCS:.c=.o}

BONUS		=	ft_lstnew.c\
				ft_lstadd_front.c\
				ft_lstsize.c\
				ft_lstlast.c\
				ft_lstadd_back.c\
				ft_lstdelone.c\
				ft_lstclear.c\
				ft_lstiter.c\
				ft_lstmap.c\

BONUS_OBJS	=	$(BONUS:.c=.o) 

NAME		=	libft.a

RM			=	rm -f

CC			=	gcc

FLAGS		=	-Wall -Wextra -Werror 

.c.o		:
				${CC} ${FLAGS} -c $< -o ${<:.c=.o} 

$(NAME)		:	${OBJS}
				ar rc $(NAME) $(OBJS)

all			:	${NAME}

clean		:
				${RM} ${OBJS} ${BONUS_OBJS}

fclean		:	clean
				${RM} ${NAME}

re			:	fclean all

bonus		:	$(OBJS) $(BONUS_OBJS)
				ar rcs ${NAME} ${OBJS} ${BONUS_OBJS}

.PHONY		:	all clean fclean re bonus
