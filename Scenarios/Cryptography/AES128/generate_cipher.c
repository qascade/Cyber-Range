#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include "aes_lib.h"

int main()
{
    unsigned char s[29] = "cybersheild{Th1s_1s_ECB_M0d3}"; 
    unsigned char key[16] = "cybersheildloves";
    aes_ecb_encrypt(s,key,29);
    printf("%s\n",s);
    aes_ecb_decrypt(s,key,29); 
    //printf("%s\n",s);
}
