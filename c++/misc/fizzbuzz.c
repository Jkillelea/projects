#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char **argv) {
  if(argc < 2) {
    puts("Enter a number");
    return EXIT_FAILURE;
  }

  int num_max = atoi(argv[1]);

  // the classic
  for(int i = 1; i <= num_max; i++) {
    if((i % 3 == 0) && (i % 5 == 0)) // multiple of 15
      puts("fizzbuzz");
    else if(i % 5 == 0)              // multiple of 5
      puts("buzz");
    else if(i % 3 == 0)              // multiple of 3 
      puts("fizz");
    else {
      char *buf;
      asprintf(&buf, "%d", i); // allocs a buffer but guarantees it won't overflow
      puts(buf);
      free(buf);               // free the buffer
    }
  }

  return EXIT_SUCCESS;
}
