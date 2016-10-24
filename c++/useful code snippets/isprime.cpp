#include <iostream>
using namespace std;

// iterate through, calc (number % [2 .. nummber-1])
bool isPrime(int toTest) {
    int remainder = 0;
    for(int i = 2; i < toTest; i++) // don't check 1 and the number itself, every num is divisble by those
    {
        remainder = toTest % i;
        if(remainder == 0)         // if it's divisble by anything else
            return false;
    }
    return true;
}


int main(void) {
    int toTest = 0;

    cout << "Enter a number to check:: ";
    cin  >> toTest;

    if(isPrime(toTest)) 
        cout << toTest << " is a prime." << endl;
    else
        cout << toTest << " is not a prime." << endl;
    return 0;
}
