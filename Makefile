NAME = libft.a

SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcat.c \
ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c \
ft_substr.c ft_tolower.c ft_toupper.c ft_strmapi.c ft_striteri.c

SRCS_BONUS = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstiter.c \
ft_lstlast.c ft_lstmap.c ft_lstnew.c ft_lstsize.c ft_lstdelone.c

OBJS = $(SRCS:.c=.o)
BONUS_OBJS = $(SRCS_BONUS:.c=.o)

COMPRESS = ar rcs

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

%.o: %.c
	$(CC) -c $(CFLAGS) $?

all: $(NAME)

$(NAME): $(OBJS)
	$(COMPRESS) $(NAME) $(OBJS)

bonus: $(OBJS) $(BONUS_OBJS)
	$(COMPRESS) $(NAME) $(OBJS) $(BONUS_OBJS)

	touch bonus
	
clean:
	$(RM) $(OBJS) $(BONUS_OBJS) bonus

fclean: clean
	$(RM) $(NAME)

re:  fclean $(NAME)

.PHONY: all, clean, fclean, re
