#include <iostream>

int triple(int number) { // call by value
  return number * 3;     // return 3X the val of number
}
void triple_by_address(int &number) { // call by reference, allows for in-situ modification
  number *= 3;                        //the value at number is tripled
}

int main(int argc, char const *argv[]) {

  int number;
  std::cout << "Enter a number" << std::endl;
  std::cin >> number;

  std::cout << "triple(number) = " << triple(number) << std::endl;
  std::cout << "triple_by_address(number) has no return" << std::endl;
  triple_by_address(number);
  std::cout << "but number is now " << number << std::endl;

  return 0;
}
