SRC =	checker.c	\
	main.c      \
	checker.c		\
	cmd1.c	\
	cmd2.c 	\
	free.c 	\
	init.c \
	sort_check.c 		\
	sort_x100_x500.c \
	utils.c		\
	utils2.c    \


OBJ = $(SRC:.c=.o)

CC = cc

NAME = push_swap

CFLAGS =	-Wall -Wextra -Werror

all :	$(NAME)

$(NAME) : $(OBJ)
		$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

clean :
		rm -f $(OBJ)

fclean : clean
		rm -f $(NAME)

re : fclean $(NAME)

.PHONY: all clean fclean re