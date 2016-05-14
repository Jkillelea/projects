#include <iostream>

using namespace std;

int main(){

	int array[5] = {0, 1, 2, 3, 4};

	for(int i = 0; i <= 7; i++){
	cout << array[i] << endl;
	cout << &array[i] << "\n" << endl;
	}


	return 0;
}
