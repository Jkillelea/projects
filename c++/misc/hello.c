#include <stdio.h>
// Kernel style is 8 spaces per tab
int main(int argc, const char* argv[]) {
        for(int i = 0; i < argc; i++) // print out each arg
        {
                printf("%s", argv[i]);
                printf("\n");
        }
        return 0;
}
