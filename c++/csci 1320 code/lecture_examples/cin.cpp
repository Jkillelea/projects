#include <iostream>
#include <string>

int dogAge;

int main(int argc, char const *argv[]) {
  std::cout << "How old is your dog?" << std::endl;
  std::cin  >> dogAge; //int
  std::cout << "That's " << 7*dogAge << " human years!"<< std::endl;

  return 0;
}
