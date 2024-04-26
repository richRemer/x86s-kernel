#include "system.h"
#define STDOUT 1

void _start() {
    int error = write(STDOUT, "hello\n", 6) < 0;
    exit(error);
}
