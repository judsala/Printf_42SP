NAME = libftprintf.a

INCLUDE = ft_printf.h

CC = clang

FLAGS = -Wall -Werror -Wextra

SRC = print_char.c print_hex.c print_int.c print_pointer.c \
	print_str.c print_unsigned.c ft_printf.c

OBJ = print_char.o print_hex.o print_int.o print_pointer.o \
	print_str.o print_unsigned.o ft_printf.o

RM = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

$(OBJ): $(SRC)
	$(CC) $(FLAGS) -I $(INCLUDE) -c $(SRC)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re