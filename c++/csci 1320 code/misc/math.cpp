#include <iostream>
using namespace std;



void f1(const double array[], int size){
  int i = 0;
  while (i < size) {
    array[i] += 2;
    std::cout << array[i] << std::endl;
    i++;
  }
}


int main(int argc, char const *argv[]) {

int array1[10], array2[10];

  array1 = array2;

}
