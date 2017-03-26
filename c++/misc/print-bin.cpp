#include <cstdlib>
#include <iostream>
#include <bitset>

using namespace std;

int main(const int argc, const char* argv[]) {

  if(argc < 2){ // sanity check
    cerr << "not enough arguments provided!" << endl;
    exit(1);
  }

  int i = 0;
  const char* word = argv[1]; // copy reference for better name
  while(word[i] != 0) {       // not-null byte
    cout << bitset<8>(word[i]) << endl; // bitset is basically an array of bits
    i++;
  }

}
