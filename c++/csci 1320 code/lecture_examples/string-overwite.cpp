#include <iostream>

char string[] = "Hi";

int main(int argc, char const *argv[]) {
  std::cout << "String: " << string << std::endl;
  std::cout << "write 'Z' to string[2]..." << std::endl;

  string[2] = 'Z';

  std::cout << "String: " << string << std::endl;

  return 0;
}
