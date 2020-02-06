#include <stdio.h>
#include <string.h>
#include <stdlib.h>
extern int	ft_strcmp(char *str1, char *str2);
extern size_t ft_strlen(char *str);
extern	char *ft_strcpy(char *src, char *dst);

int main(void)
{
	char *str = malloc(6);
	str = calloc(1, 6);
	printf("%s\n", ft_strcpy("hello", str));
}