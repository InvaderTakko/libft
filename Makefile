# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sruff <sruff@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/23 14:34:25 by sruff             #+#    #+#              #
#    Updated: 2023/11/09 15:22:45 by sruff            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
CC = cc
CFLAGS 	= -Wall -Werror -Wextra
ARFLAGS = -rcs
CFILES 	= ft_atoi.c ft_bzero.c ft_calloc.c ft_strrchr.c ft_isascii.c ft_isalnum.c\
		 ft_isalpha.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memset.c ft_memchr.c ft_memcmp.c\
		 ft_memcpy.c ft_memmove.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c\
		 ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strncmp.c ft_strlcpy.c ft_strlen.c ft_strmapi.c\
		 ft_strnstr.c ft_substr.c ft_strtrim.c ft_tolower.c ft_toupper.c\
		 
BONUS 	= ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c\
		 ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
OBJS 	= $(CFILES:.c=.o)
BONOBJS  = $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS) 
		ar $(ARFLAGS) $(NAME) $(OBJS) 


bonus: $(BONOBJS)
		ar $(ARFLAGS) $(NAME) $(BONOBJS)

clean:
		rm -rf $(OBJS)
		rm -rf $(BONOBJS)

fclean: clean
		rm -f $(NAME) 

re:	fclean all

.PHONY: all bonus clean fclean re

#NAME = libft.a
#CC = cc
#CFLAGS = -Wall -Wextra -Werror
#ARFLAGS = -rcs
#RM = rm -rf
#SRC = ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
#ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
#ft_strrchr.c ft_tolower.c ft_toupper.c ft_atoi.c ft_memcmp.c ft_strnstr.c ft_calloc.c ft_strdup.c ft_substr.c \
#ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
#BSRC = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
#OBJ = $(SRC:.c=.o)
#BOBJ = $(BSRC:.c=.o)

#all: $(NAME)

#$(NAME): $(OBJ)
#    ar $(ARFLAGS) $(NAME) $(OBJ)

#%.o:%.c
#    $(CC) $(CFLAGS) -c $< -o $@

#bonus: $(OBJ) $(BOBJ)
#    ar $(ARFLAGS) $(NAME) $(OBJ) $(BOBJ)

#clean:
#    $(RM) $(OBJ) $(BOBJ)

#fclean: clean
#    $(RM) $(NAME)
	
#re: fclean $(NAME)