#include <stdint.h>
#include <stdio.h>

union data {        // a union uses the same storage location for possible different fields
  uint32_t integer; // it is only the size of the largest field
  uint8_t  bytes[4];
};

int main(int argc, char *argv[]) {
  union data d;
  d.integer = 1;

  if(d.bytes[0] == 1) {        // low byte
    puts("Little-Endian");
  } else if(d.bytes[3] == 1) { // high byte
    puts("Big-Endian");
  } else {                     // wtf?
    puts("Unable to determine endianness");
  }
}
