#include <iostream>
using namespace std;

// NONE OF THIS WORKS

int main(int argc, char const *argv[]) {

  int *potato[3], testArray[3] = {0, 1, 2};

  for (size_t i = 0; i < 3; i++) {
    potato[i] = testArray[i];
  }

  std::cout << "&testArray: " << &testArray << std::endl;
  std::cout << "potato: " << potato << std::endl;


  return 0;
}
