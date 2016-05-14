// Copyright Jacob Killelea, CU Boulder CSCI 1320, Spring 2016, section 302
// MIT License
// converts a decimal number into binary and hex
#include <iostream>
using namespace std;

// prototype
void print_array(int array[]);


int main(int argc, char const *argv[]) {
  // declarations
  int number, decimal, hexadecimal;
  int binary_out[8] = {0, 0, 0, 0, 0, 0, 0, 0};

  // get from user
  std::cout << "Enter a number between 0 and 255: ";
  std::cin  >> number;
  if (number > 255) {
    std::cout << "Enter a number bewteen 0 and 255 next time." << std::endl;
    return 1;
  }
  decimal     = number; // set both equal to the input number
  hexadecimal = number;


  // make decimal into a binary array.
  int counter = 0;
  while (number != 0) {
    binary_out[7 - counter] = number % 2;
    number /= 2;
    counter++;
  }

  std::cout << "hex: 0x"   << hex << hexadecimal << std::endl; // This hex turns ALL following numbers into hex!
  std::cout << "Decimal: " << dec << decimal     << std::endl; // Need to preface this number with dec to change them back!

  std::cout << "Binary: ";
  print_array(binary_out);


  return 0;
}


void print_array(int array[]) {
  // print out the binary number
  for (size_t i = 0; i < 8; i++) {
    std::cout << array[i];
  }
  std::cout << "" << std::endl;
}
