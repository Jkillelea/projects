#include <iostream>


int main(int argc, char const *argv[]) {

  int arg[3];

  for (int i = 0; i < 3; i++) {
    arg[i] = i;
  }

  std::cout << "&arg:   " << &arg << std::endl;

  for (int i = 0; i < 3; i++) {
    std::cout << std::endl;
    std::cout << " arg[" << i << "]: " << arg[i] << std::endl;
    // std::cout << "*arg[" << i << "]:" << *arg[i] << std::endl;
    std::cout << "&arg[" << i << "]:" << &arg[i] << std::endl;
  }

  return 0;
}
