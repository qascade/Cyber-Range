#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
  volatile int to_be_modded;
  char buffer[64];

  if(argc == 1) {
      errx(1, "Please provide an input\n"); 
  }

  to_be_modded = 0;
  strcpy(buffer, argv[1]);

  if(to_be_modded == 0x84929076) {
      printf("cybersheild{S0_y0u_c@n_m0difY_th3_v@riAbl3}\n"); 
  } else {
      printf("Try again, you got 0x%08x\n", to_be_modded);
  }
  return 0;
}
