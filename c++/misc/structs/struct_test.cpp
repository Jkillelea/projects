#include <iostream>
#include <string>
using namespace std;

struct potato {
  string name;
  int age;
} tuber; // first way of creating a variable from a struct

potato russett; // second way of creating a variable from a struct

void sayTuber(potato potato); // prototype

int main(void) {

  tuber.name = "tuber";
  tuber.age = 1;

  russett.name = "russett";
  russett.age = 1000000;

  sayTuber(tuber);
  sayTuber(russett);

  return 0;
}

void sayTuber(potato potato){
  std::cout << potato.name << std::endl;
  std::cout << potato.age << std::endl;
}
