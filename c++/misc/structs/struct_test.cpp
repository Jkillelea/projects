#include <iostream>
#include <string>
using namespace std;

struct potato {
  string name;
  int age;
} tuber;

void sayTuber(potato &obj);

int main(int argc, char const *argv[]) {


  tuber.name = "tuber";
  tuber.age = 1;

  sayTuber(tuber);

  return 0;
}

void sayTuber(potato &obj){
  std::cout << tuber.name << std::endl;
  std::cout << tuber.age << std::endl;
}
