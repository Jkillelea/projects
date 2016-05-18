// a collection of math thingys that might be useful
#include <cmath>
#include "silly_math.h"

int array_to_byte(int array[], int length){
  // Takes an array and converts it from binary to its numerical value
  int out_byte = 0;
  for (int i = 0; i < length; i++) {
    out_byte += array[i] * pow(2, 7 - i);
  }
  return out_byte;
}

void number_to_byte_array(int number, int output_array[]){
  // make decimal into a binary array.
  int counter = 0;
  while (number != 0) {
    output_array[7 - counter] = number % 2;
    number /= 2;
    counter++;
  }
}
