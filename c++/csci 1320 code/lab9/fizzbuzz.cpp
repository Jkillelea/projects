// Copyright Jacob Killelea, CU Boulder CSCI 1320, Spring 2016, section 302
// MIT License
#include <stdlib.h>
#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
  // iterate from 1 to 100
  for (int i = 1; i <= 100; i++) {
    if (i % 5 == 0 && i % 3 == 0) {
      // if multiple of 15, print fizzbuzz instead of the number
      std::cout << "fizzbuzz" << std::endl;
    }
    else if (i % 5 == 0) {
      // if multiple of 5, print buzz
      std::cout << "buzz" << std::endl;
    }
    else if (i % 3 == 0) {
      // if multiple of 3, print fizz
      std::cout << "fizz" << std::endl;
    }
    else {
      // print the number
      std::cout << i << std::endl;
    }
  }

  return 0;
}
