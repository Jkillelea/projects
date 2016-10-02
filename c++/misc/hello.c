#include <stdio.h>

int main(int arc, const char* argv[]) {
        for(int i = 0; i < arc; i++) // print out each arg
        {
                printf("%s", argv[i]);
                printf("\n");
        }
        return 0;
}
