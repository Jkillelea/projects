#include <iostream>
// #include <stdlib>

int globalArray[8];

int* array_pointer(void) { // returns pointer to start of array
  return &globalArray[0];
}

int main(int argc, char const *argv[]) {

  int* array_p = array_pointer(); // create pointer to array

  std::cout << &globalArray << std::endl; // print out both to see that they're the same (meaning the address of the array is the same as that of the pointer we made to it)
  std::cout << array_p      << std::endl;

  // if (array_p[0] == globalArray[0]) {
  //   std::cout << "true" << std::endl;
  // } else {
  //   std::cout << "false" << std::endl;
  // }

  return 0;
}
