#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main(int argc, char const *argv[]) {
  vector<string> testVec { "one", "two", "three"};

  for (size_t i = 0; i < argc; i++) {
    string next = string(argv[i]);
    testVec.push_back(next);
  }

  for (i : testVec) { // range iteration is perfect
    cout << i << '\n';
  }

  return 0;
}
