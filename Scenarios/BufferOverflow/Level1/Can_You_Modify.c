#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

int main(int argc, char **argv)
{
  volatile int to_be_modded;
  char buffer[64];

  to_be_modded = 0;
  gets(buffer);

  if(to_be_modded != 0) {
      printf("cyberSheild{Y0u_M0difieD_th3_v@riAbl3}");
  } else {
      printf("Try again?\n");
  }
}
