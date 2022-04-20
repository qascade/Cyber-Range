#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
  volatile int to_be_modded;
  char buffer[64];
  char *var;

  var = getenv("OUTSIDER");

  if(var == NULL) {
      errx(1, "Please set the 'OUTSIDER' ENV VARIABLE\n");
  }

  to_be_modded = 0;

  strcpy(buffer, var);

  if(to_be_modded == (int)0x84929076) {
      printf("cybersheild{D0n't_L3T_Th3_enV_Var_IN_wR0nG_h@nDs}");
  } else {
      printf("Try again, you got 0x%08x\n", to_be_modded);
  }

}
