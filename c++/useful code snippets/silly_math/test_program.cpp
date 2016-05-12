#include <iostream>
#include "silly_math.h"

int main(){

  int length = 8;
  int potato[8] = {0, 0, 0, 0, 0, 0, 0, 1};

  int poop = array_to_byte(potato, length);

  for (size_t i = 0; i < length; i++) {
    std::cout << potato[i];
  }
  std::cout << " -- " << poop << std::endl;


  return 0;
}
