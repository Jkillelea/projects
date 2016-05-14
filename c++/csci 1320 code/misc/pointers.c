#include <stdio.h>

/*
    "*" means "the value at the address"
    "&" means "the address of the variable"
*/

int main() {

    /* declare x to be an integer with the value 7 */
    int x = 7;

    /* print the value of x, which is 7 */
    printf("x is %d\n", x);

    /* declare p to be a pointer to an integer */
    int *p;

    /* print the value of p, which is just some random address in your program's space */
    printf("new pointer p is %d\n", p);

    /* print whatever value is at that random address. should also be random crap. */
    printf("value at p is %d\n", *p);

    /* set p to be the address of x */
    p = &x;

    /* print the address of x, different from the random address above */
    printf("address of x is %d\n", &x);

    /* print whatever value is at that x's address. should be 7. */
    printf("thing at address of x is %d\n", *p);

    /* set the thing pointed to by p to the value 8. note: this changes x */
    *p = 8;

    /* print the value of what p points to, going to be 8 */
    printf("value of thing at p is now %d\n", *p);
    printf("therefore x is now the same as that: %d\n", x);

    /* print the value in memory at the address of x (just the value of x itself!)*/
    printf("value of thing at address of x is %d\n", *&x);

    /* note that p itself is just a variable, and it has an address */
    printf("address of p is %d\n", &p);

    /* attempt to access memory not allocated to this process, and the os will kill this process with "seg fault" message */
    p = 1234;
    printf("illegal access %d\n", *p);
}
