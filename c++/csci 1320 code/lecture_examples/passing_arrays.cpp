#include <iostream>
// Copyright Jacob Killelea, CU Boulder CSCI 1320, Spring 2016, section 302
// MIT License

// PASSING ARRAYS PASSES A REFERENCE ALWAYS, EVEN IF NOT SPECIFIED

void fillUp(int arr[], int size) {
  for (size_t i = 0; i < size; i++) {
    std::cout << "arr[" << i << "] = ";
    std::cin >> arr[i];
  }
  std::cout << "" << std::endl;
}
void printOut(int arr[], int size) {
  for (size_t i = 0; i < size; i++) {
    std::cout << "arr[" << i << "] = " << arr[i] << std::endl;
  }
}

int main(int argc, char const *argv[]) {
  const int ARR_SIZE = 5;
  int arr[ARR_SIZE];
  fillUp(arr, ARR_SIZE);   // user ennters values
  printOut(arr, ARR_SIZE); // values get printed out, even thorugh arr is not of global scope!
  return 0;
}
