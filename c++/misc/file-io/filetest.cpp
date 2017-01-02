#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char *argv[]) {
  ofstream outputfile ("outtest.txt", ios::out);

  if(outputfile.is_open()) {
    for (int i = 1; i < argc; i++) {
      outputfile << argv[i] << '\n';
    }
    outputfile.close();
  }
  return 0;
}
