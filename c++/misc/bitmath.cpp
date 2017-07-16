#include <iostream>
#include <bitset>

using namespace std;

int main(void) {
  bitset<8> reg = bitset<8>(255);

  reg ^= 1 << 7; // just flips the bit (from 1 to 0 here)
  cout << reg << '\n';

  reg ^= 1 << 7; // flips back (from 0 to 1)
  cout << reg << '\n';
  
  return 0;
}
