// Copyright Jacob Killelea, CU Boulder CSCI 1320, Spring 2016, section 302
// MIT License
// tests what's needed for a string in C++
#include <iostream>
using namespace std;                // strings are not in C++ by default! need namespace std!

int main(int argc, char const *argv[]) {
  string potato = argv[0];     // should just be the name of the program, a.out, unless otherwise decided at compile time
  cout << potato << endl;      // should print stringtest

  return 0;
}
