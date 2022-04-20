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
      printf("cyberSheild{Y0u_Sm@sh3d_S0m3_St@ck}");
  } else {
      printf("Smashing Stack is not some Child's play!!");
  }
}
