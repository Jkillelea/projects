// whether we can declare functions after Main and still call them
#include <iostream>

int main(int argc, char const *argv[]) {
  testFunction();
  return 0;
}


void testFunction() {
  std::cout << "it worked" << std::endl;
}

// answer = NO
// function must be declared - either in full or with a prototype - ahead of where it'll be used
