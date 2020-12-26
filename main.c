#include <stdio.h>
#include <string.h>

int     ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
int     main(void)
{
	char	*test;
	char	buffer[100];
	test = "Pepepopo";
	printf("\nStrlen function  of the string: \"%s\":\n   * System's : %lu\n   * Mine     : %d\n", test, strlen(test), ft_strlen(test));
	printf("Strcpy function of the string \"%s\":\n   * System's : %s\n   * Mine     : %s\n",test, strcpy(buffer, test),ft_strcpy(buffer, test));
	//printf("ep--aldap[: %s\n\n", strcpy(dest1, test1));
	//printf("Comparing two strings: %d\n", ft_strcmp("Pepepopo", NULL));
}
