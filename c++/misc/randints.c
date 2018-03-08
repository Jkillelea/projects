// Generate 5 million random integers and sum them
// Jacob Killelea - ASEN 3300 - March 6 2018

#include <stdlib.h>   // srand, rand
#include <stdint.h>   // int64_t
#include <stdio.h>    // printf
#include <time.h>     // time (for seeding random numbers)
#include <sys/time.h> // gettimeofday (for actual timing)

// convert start and end times to microseconds elapsed
int64_t us_difference(struct timeval start, struct timeval end) {
    return 1e6*(end.tv_sec - start.tv_sec) + end.tv_usec - start.tv_usec;
}

int main(int arc, char *argv[]) {
    struct timeval start, end;
    int64_t accumulator, elapsed_us, i = 0;

    srand(time(NULL));          // seed RNG

    gettimeofday(&start, NULL); // start time
    while(i < 5e6) {
        accumulator += rand(); 
        i++;
    }
    gettimeofday(&end, NULL);   // end time

    elapsed_us = us_difference(start, end);

    printf("%f sec\n", ((double)elapsed_us)/1e6);

    return 0;
}
