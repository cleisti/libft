# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/25 19:42:12 by cleisti           #+#    #+#              #
#    Updated: 2019/12/13 19:07:09 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c \
	   ft_atoi.c ft_toupper.c ft_tolower.c ft_isprint.c ft_isdigit.c ft_isascii.c ft_isalpha.c \
   	   ft_isalnum.c ft_memcmp.c ft_strcmp.c ft_strncmp.c ft_strlen.c ft_strlcat.c ft_itoa.c \
   	   ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c ft_strchr.c ft_strrchr.c \
   	   ft_strstr.c ft_strnstr.c ft_putchar.c ft_putstr.c ft_putnbr.c ft_putchar_fd.c ft_putendl.c \
   	   ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_memalloc.c ft_memdel.c ft_strdel.c \
	   ft_strclr.c ft_striter.c ft_striteri.c ft_strequ.c ft_strnequ.c ft_strnew.c ft_strmap.c \
	   ft_strmapi.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_strrev.c ft_isspace.c \
	   ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_lstappend.c \
	   ft_isupper.c ft_islower.c ft_realloc.c ft_strndup.c
OBJ = $(subst .c,.o,$(SRCS))
FLAGS = -Wall -Wextra -Werror
LIBRARY = ar rc $(NAME) $(OBJ)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(SRCS)
	gcc $(FLAGS) -c $(SRCS)
	$(LIBRARY)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	
re: fclean all