#include <stdio.h>
#include <string.h>
#include <unistd.h>


int     ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
int     main(void)
{
	char	*test;
	char	buffer[100];
	char	*str;
	test = "Pepepopo";
	printf("\n*====Strlen====* function of the string: \"%s\":\n   * System's : %lu\n   * Mine     : %d\n", test, strlen(test), ft_strlen(test));


	printf("\n*====Strcpy====* function of the string: \"%s\":\n   * System's : %s\n   * Mine     : %s\n",test, strcpy(buffer, test),ft_strcpy(buffer, test));

	

	str = "Something different";
	printf("\n*====Strcmp====* function of the string: \"%s\":\n   * System's : %d\n   * Mine     : %d\n",test, strcmp(test, str), ft_strcmp(test, str));
	printf("\n*====Strcmp====* function of the string: \"%s\":\n",test);
	printf("\n\n");
	write(1, 10, 7);
	printf("\n\n");
	ft_write(1, 10, 7);
	

}
