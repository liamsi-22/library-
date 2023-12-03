# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iel-fagh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/01 21:08:37 by iel-fagh          #+#    #+#              #
#    Updated: 2023/12/03 11:53:10 by iel-fagh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME := libft.a
CC := cc
CFLAGS := -Wall -Wextra -Werror
AR := ar rc
RM := rm -rf
CFILES := ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
    ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
    ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
    ft_calloc.c ft_strdup.c ft_toupper.c ft_tolower.c \
    ft_strchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c \
    ft_strnstr.c ft_atoi.c ft_strrchr.c ft_substr.c \
    ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
    ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
    ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

CFILESB := ft_lstnew_bonus.c ft_lstadd_front_bonus.c \
    ft_lstsize_bonus.c ft_lstlast_bonus.c \
    ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
    ft_lstclear_bonus.c ft_lstiter_bonus.c \
    ft_lstmap_bonus.c

OBJS := ${CFILES:.c=.o}
OBJSB := ${CFILESB:.c=.o}

$(NAME): $(OBJS)
	$(AR) $@ $^

all: $(NAME)

$(OBJSB): $(CFILESB)
	$(CC) $(CFLAGS) -c $(CFILESB)
	$(AR) $(NAME) $@

bonus: $(OBJSB)

clean:
	$(RM) $(OBJS) $(OBJSB)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus
