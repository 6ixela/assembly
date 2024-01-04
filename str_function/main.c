#include <stdio.h>

//int my_strlen(char *c);
void my_strcpy(char *src, char *dst);

int main(void)
{
    char *c = "Hello";
    char dst[10];
    my_strcpy(c, dst);
    dst[1] = 'a';
    printf("res = %s\n", dst);
    return 0;
}
