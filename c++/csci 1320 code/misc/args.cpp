#include <iostream>
#include <string>

int main(int argc, char const *argv[]) {

  std::cout << "argc val: ";
  std::cout << argc << std::endl;

  std::cout << "argc address: ";
  std::cout << &argc << std::endl;

  // std::cout << "argv vals: " << std::endl;
  for (size_t i = 0; i < argc; i++) {
    std::cout << "argv[" << i << "] " << "value: " << argv[i] << " -- address: " << &argv[i] << std::endl;
  }

  std::cout << "argv address: ";
  std::cout << &argv << std::endl;

  return 0;
}
