#include <iostream>
#include <stdlib.h>

using namespace std;

int main(int argc, char const *argv[]) {

  for (size_t i = 1; i <= argc; i++) {
    // print args
    std::cout << argv[i] << std::endl;
  }

  return 0;
}
