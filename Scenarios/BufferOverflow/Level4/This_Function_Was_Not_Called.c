#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

void NeverCallMe()
{
    printf("I was not supposed to be called in this code\n"); 
    printf("cybersheild{Y0u_C@lled_m3}\n");
}

int main(int argc, char **argv)
{
    char buffer[64];
    gets(buffer);

    return 0;  
}
