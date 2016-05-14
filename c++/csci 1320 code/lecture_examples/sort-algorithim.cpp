#include <iostream>

int main(int argc, char const *argv[]) {
  int maximum, scores[5], idx;

  std::cout << "Enter 5 numbers, separated by spaces" << std::endl;
  std::cin >> scores[0] >> scores[1] >> scores[2] >> scores[3] >> scores[4];

  maximum = scores[0];

  for (idx = 0; idx < 5; idx++) {
    if (scores[idx] > maximum) {
      maximum = scores[idx];
    }
  }

  std::cout << "max:: " << maximum << std::endl;

  return 0;
}
